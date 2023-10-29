// This script is the most basic demonstration of how to generate a pattern set using a Tessent Patterns Specification.

// Step 1. Create Patterns Specification.
set spec [create_patterns_specification -replace]
report_config_data $spec


// Step 2. Edit Patterns Specification.

// Delete MBIST sign-off patterns that are not needed.
delete_config_element $spec/Patterns(MemoryBist_P1)
delete_config_element $spec/Patterns(MemoryBist_ParallelRetentionTest_P1)


// Step 3. Process the Patterns Specification.
process_patterns_specification

