#! /usr/intel/bin/perl

#========================================================================================================
# Filename:  run_split_tessent_synthesis_jobs.pl
# Author:    Tony Dunn
# Purpose:   - Finds the TCL scripts produced by the split_tessent_synthesis_script script
#            - Forks child process and launches a syntheis job from within each child
#            - Waits for all child processes to complete before exiting
#========================================================================================================

use Cwd;
use Cwd 'chdir';
use File::Spec::Functions;

$blockDir = getcwd();
# Check to make sure that there are the correct number of parameters on the command line
if ($#ARGV < 1) {
   die ("***I: Usage: run_split_tessent_synthesis_jobs <synthesis directory path> <max_queued_netbatch_jobs>\n") ;
}

$synthDir = @ARGV[0];
$maxQueuedJobs = @ARGV[1];

$datestring = localtime();
print ("***I: Start time is $datestring\n") ;
print ("***I: Starting split synthesis runs for components.  Process ID: $$\n") ;
print ("***I: Block working directory is $blockDir\n") ;
print ("***I: Synthesis directory is $synthDir\n") ;
print ("***I: Using maximum queued netbatch jobs of $maxQueuedJobs\n") ;
print ("***I: Using netbatch class environment variable NBCLASS $ENV{NBCLASS}\n") ;


# Locate the split synthesis scripts using a name glob on the provided directory
@splitSynthesisScripts = glob("${synthDir}/user_*tcl" ) ;

$numberOfRemainingJobs = 0 ;
foreach $i (@splitSynthesisScripts) {
   print ("***I: Found split synthesis script: $i\n" );
   $numberOfRemainingJobs++ ;
}



while ($numberOfRemainingJobs > 0) {
   $numberOfForks = 0 ;
   if ($numberOfRemainingJobs < $maxQueuedJobs) {
      $numberOfJobsToLaunch = $numberOfRemainingJobs ;
   } else {
      $numberOfJobsToLaunch = $maxQueuedJobs ;
   }
   print ("***I: Number of remaining jobs is $numberOfRemainingJobs. Launching $numberOfJobsToLaunch jobs...\n") ;

   for (1..$numberOfJobsToLaunch) {
      $i = pop @splitSynthesisScripts ;

      ($v, $p, $f) = File::Spec->splitpath($i);

      $pid = fork;

      if (not defined $pid) {
         die ("***F: Could not fork to launch child synthesis processes.\n") ;
      }

      # After the fork, $pid=0 in the child process and is the PID of the child process in the parent
      if ($pid) {
         print ("***I: Parent process PID ($$) has forked child process PID ($pid)\n") ;
         $numberOfForks++;
      } else {
         print ("***I: Child process PID ($$) for $i has started...\n") ;
   
         if ( chdir "${p}" ) {
            print ("***I: Child process PID ($$) successfully changed to directory $p\n") ;
         } else {
            die ("***E: For some reason, could not change to directory $p.  Child process PID ($$) exiting...\n") ;
         }
   
         print ("***I: Child process PID ($$) launching synthesis job for $i...\n") ;
         $rc =  system ("nbjob run --mode interactive --log-file $blockDir/logfiles/netbatch_${f}.log dc_shell -64 -f ./${f} > $blockDir/logfiles/${f}.log 2> /dev/null" ) ;
         print ("***I: Child process PID ($$) synthesis job completed with return code $rc.  Child process exiting.\n") ;
         exit ;
      }

   }
   print ("***I: Parent process launched $numberOfForks child synthesis processes.   Waiting for them to complete...\n") ;

   $numberOfRemainingJobs = $numberOfRemainingJobs - $numberOfJobsToLaunch ;

   for (1 .. $numberOfForks) {
      $pid = wait ();
      $numberOfJobsToLaunch-- ;
      print ("***I: Parent saw child process PID ($pid) exit.  Waiting on $numberOfJobsToLaunch with $numberOfRemainingJobs still to launch in the next passes\n") ;
   }

}

print ("***I: Parent process exiting.\n") ;

$datestring = localtime();
print ("***I: Finish time is $datestring\n") ;

exit;

