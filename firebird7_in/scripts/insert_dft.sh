
###########################
# Two-Pass Insertion Flow #
###########################

# Step 1. First Insertion Pass (IJTAG, MBIST) #
nbjob run --mode interactive tessent -shell -dofile ./dofiles/1.insert_ijtag_mbist.do

# Step 2. Second Insertion Pass (EDT, OCC, SSN) #
nbjob run --mode interactive tessent -shell -dofile ./dofiles/2.insert_edt_occ_ssn.do

# Step 3. Scan Insertion #
nbjob run --mode interactive tessent -shell -dofile ./dofiles/3.insert_scan.do

