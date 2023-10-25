set uniquified_collection [ uniquify_instances [get_instances "*" -of_type design -hierarchical -filter "is_hard_module!=true" ] ]
if { [sizeof_collection $uniquified_collection] > 0 } {
   foreach_in_collection {i} $uniquified_collection {
      set j [get_single_attribute_value $i -name name]
      puts "***I: Uniquified the following design module to this new name:  $j"
   }
} else {
   puts "***I: Did not need to uniquify any design modules."
}
