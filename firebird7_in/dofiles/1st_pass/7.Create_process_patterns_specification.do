// This script is the most basic demonstration of how to generate a pattern set using a Tessent Patterns Specification.

// Step 1. Create a Patterns Specification.

set spec [create_patterns_specification -replace]
report_config_data $spec

// You should see ICLNetwork.


// Step 2. Process the Patterns Specification.
process_patterns_specification

// 
