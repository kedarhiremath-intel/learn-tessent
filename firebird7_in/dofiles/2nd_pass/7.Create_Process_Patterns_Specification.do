
///////////////////////////////////////////
// Step 1. Create Patterns Specification //
///////////////////////////////////////////

set spec [create_patterns_specification -replace]
report_config_data $spec

// Delete MBIST sign-off patterns that are not needed.
delete_config_element $spec/Patterns(MemoryBist_P1)
delete_config_element $spec/Patterns(MemoryBist_ParallelRetentionTest_P1)


////////////////////////////////////////////
// Step 2. Process Patterns Specification //
////////////////////////////////////////////

process_patterns_specification

