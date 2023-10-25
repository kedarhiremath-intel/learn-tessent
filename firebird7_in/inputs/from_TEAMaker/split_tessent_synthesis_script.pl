#! /usr/intel/bin/perl

#============================================================================================
# Name: split_tessent_synthesis_script.pl
# Description: 
#   - More generalized version of the script to split the Tessent synthesis script into
#     multiple scripts for parallel execution yielding faster turn-time.
#   - Now works for both all Tessent synthesis scripts at all stages (e.g. MBIST, DFT Logic
#     Insertion, BSCAN 
#
# Arguments:
#   - filename (including path) of the Tessent dc_shell.synthesis_tcl script to be split
#============================================================================================

use File::Spec::Functions;
use Data::Dumper qw(Dumper);
use Clone 'clone';

$debug= true ;

# Check to make sure that there are the correct number of parameters on the command line
if ($#ARGV < 0) {
   die ("***I: Usage: split_tessent_synthesis_script.pl <TCL file to be split>\n") ;
}

# Open the original TCL file 
$originalTcl = @ARGV[0];
print ("***I: Opening original tcl file $originalTcl for read...\n");
open (ORIG, "<$originalTcl") || die ("***E: Unable to open input file $originalTcl for read\n");
($originalTclVolumeName, $originalTclPathName, $originalTclFileName) = File::Spec->splitpath($originalTcl);


# Build the Data Structure.  The hash will be created with the following structure
# %TV = (
#    filename/key => {
#       container         => the container of the synthesis group defined in the script
#       currentDesignList => @List of designs to be synthesized
#       filename          => the name that will be used for the new synthesis script
#    }
# )
#
# - The orginal script is parse as follows:
#   1. Search for a container
#   2. Within that container, build a list of modules to synthesize based on current_design
#      statements until you find a write statement
#   3. If the write statement is the first write following a current+design, write the
#      record to the database.  Ignore consecutive writes.

$datestring = localtime();
print ("***I: Start time is $datestring\n") ;


%TV = ( );
$rec = {};
@currentCurrentDesignList = () ;


# Put the entire original synthesis file into an array
@originalSynthesisFile = <ORIG> ;
close (ORIG) ;

$needToWrite = false ;
foreach $line (@originalSynthesisFile) {
   if ($line =~ /^\# Synthesis of container '(\S+)\/(\S+)'$/) {
      print ("***I: Found new container $2.  Replacing record container name... \n") ;
      $currentContainer = $2 ;
   } elsif ($line =~ /^current_design (\S+)/) {
      print ("***I: Found Current Design $1.  Adding to record design list...\n") ;
      push @currentCurrentDesignList, $1 ;
      $currentFilename = $originalTclPathName . "user_" . $currentContainer . "."  . $1 . ".tcl" ;
      print ("***I: Updating key/filename to $currentFilename\n" );
      $needToWrite = true ;
   } elsif ($line =~ /^write/) {
      if ($needToWrite eq true) {
         print ("***I: Found write statement.  Add the record to the database.  Blank the design list.\n") ;
         $rec->{container} = $currentContainer ;
         @{ $rec->{currDesList} } = @currentCurrentDesignList ;
         $rec->{filename} = $currentFilename ; 
         $TV{ $currentFilename } = clone($rec) ;
         @currentCurrentDesignList = () ;
         $$currentFilename = "" ;
         $needToWrite = false ;
      } else {
         print ("***I: Found consecutive write statement after copying record to database.  No action needed.\n") ;
      }
   }
}

# VERY useful view of the database structure for debug 
if ($debug) { print Dumper %TV ; }


# Now that the datbase has been built, for each target file, rewind the original TCL and parse through it
# turning sections off or on for printing based on including the necessary headers and common sections as
# well as the specific container/current design sections
for $c (keys %TV) {
   $req = $TV{$c} ;
   $container = $req->{container} ;
   $outFilename = $req->{filename} ;
   @currDesList = $req->{currDesList} ;

   # Open the Split-Synthesis TCL filename for write
   print ("***I: Opening $outFilename for write...\n") ;
   open (OUT, ">$outFilename") || die ("***E: Unable to open input file $outFilename for write\n");

   $printOn = 1;
   $inMyContainer = 0 ;
   # Start with the common header; print everything until the first contaniner
   for ($lineIndex=0 ; $lineIndex <= $#originalSynthesisFile ; $lineIndex++) { 
      $line = $originalSynthesisFile[$lineIndex] ;
      if ($line =~ /^\# Synthesis of container '(\S+)\/(\S+)'$/) {
         # When a container is found if it matches the current container, keep printing, else turn off
         if ( $2 eq $container ) {
            $printOn = 1 ;
            $inMyContainer = 1 ;
         } else {
            $printOn = 0 ; 
            $inMyContainer = 0 ;
         }
      } elsif ($line =~ /^current_design (\S+)/) {
         # When a current design is found if it is amember of the list of current_designs for this 
         # section, keep printing, else turn off
         if ( $1 ~~ @currDesList ) { # i.e. is $1 a member of @currDesList
            $printOn = 1 ;
         } else {
            $printOn = 0 ; 
         }
      } elsif ($line =~ /^set_dont_touch/) {
         # special case for ROM handling where the ROM has a legitimate set_dont_touch on the STRAP module
         $nextLine = $originalSynthesisFile[$lineIndex+1] ;
         if ( ($line =~ /MISR_STRAP/) || ($nextLine =~ /MISR_STRAP/) ) { 
            print ("***I: Special case.  Found ROM MISR STRAP.  Not changing PrintOn variable.\n");
         } else {
            if ($inMyContainer eq 1) {
               $printOn = 1 ;
            } else {
               $printOn = 0 ; 
            }
         }
      }

      if ($printOn eq 1) {
         print (OUT $line ) ;
      }
   }

   # Always add an exit statement at the end
   print (OUT "exit\n\n" ) ;

   close (OUT) ;
}

$datestring = localtime();
print ("***I: Finish time is $datestring\n") ;

exit;


