//
// Verilog format test patterns produced by Tessent Shell 2022.4
// Filename       : ./tsdb_outdir/patterns/firebird7_in_gate1.patterns_signoff/ICLNetwork.v
// Idstamp        : 2022.4:ec94:6099:0:0000
// Date           : Sun Nov  5 08:49:27 2023
//
// Begin_Verify_Section 
//   format            = Verilog 
//   top_module_name   = TB 
//   serial_flag       = OFF 
//   test_set_type     = IJTAG_TEST 
//   pad_value         = X 
//   one_setup         = ON 
//   no_initialization = ON 
// End_Verify_Section 
// Parameter File Keyword Settings 
//   SIM_CHANGE_PATH           true ; 
//   SIM_TOP_NAME              TB ; 
//   SIM_INSTANCE_NAME         DUT_inst ; 
//   SIM_CLOCK_MONITOR         true ; 
// End Parameter File Keyword Settings 


`define SIM_INSTANCE_NAME DUT_inst


`timescale 1ns / 100ps

module TB;

integer     _write_DIAG_file;
integer     _DIAG_file_header;
integer     _diag_file;
integer     _diag_chain_header;
integer     _diag_scan_header;
integer     _last_fail_pattern;
integer     _fail_pattern_cnt;
integer     _write_MASK_file;
integer     _MASK_file_header;
integer     _mask_file;
integer     _par_shift_cnt;
integer     _chain_test_;
integer     _compare_fail;
integer     _compare_fail_count;
integer     _compare_count;
integer     _compare_z_count;
integer     _bit_count;
integer     _report_bit_cnt;
integer     _miscompare_limit;
integer     _found_fail;
integer     _found_fail_per_cycle;
integer     _allow_bad_message_index;
integer     _end_vec_file_ok;
integer     _cycle_count, _save_cycle_count;
integer     _pattern_count, _repeat_count_nest[0:8], _repeat_count, _message_index;
integer     _index, _scan_index, _file_cnt, _max_index, _vec_pat_count, _save_index[0:8];
integer     _repeat_depth;
integer     _file_check;
integer     _run_testsetup;
integer     _in_testsetup;
integer     _start_pat;
integer     _end_pat;
integer     _end_after_setup;
integer     _no_setup;
integer     _save_state;
integer     _restart_state;
integer     _in_restart;
integer     _override_cfg;
integer     _in_range;
integer     _do_compare;
integer     _in_chaintest;
integer     _pat_num;
integer     _skipped_patterns;
integer     _end_simulation;
integer     _config_file;
integer     _fstat;
integer     _max_file_cnt;
reg[256*8:1] _vec_file_name;
reg[256*8:1] _cfg_file_name;
integer     _scan_shift_count;
reg[13:0]    _ibus;
reg[0:0]    _exp_obus, _msk_obus;
wire[0:0]   _sim_obus;
reg[2:0]    _pat_type;
reg         _tp_num;
reg         mgcdft_save_signal, mgcdft_restart_signal;
reg[38:0]   vect;

wire fdfx_powergood, secure_red, secure_orange, secure_insysbist, ijtag_tck, 
     ijtag_reset, ijtag_ce, ijtag_se, ijtag_ue, ijtag_sel, ijtag_si, 
     PD_TOP_bisr_shift_en, PD_TOP_bisr_clk, PD_TOP_bisr_reset, ijtag_so;

event       before_finish;
assign fdfx_powergood = _ibus[13];
assign secure_red = _ibus[12];
assign secure_orange = _ibus[11];
assign secure_insysbist = _ibus[10];
assign ijtag_tck = _ibus[9];
assign ijtag_reset = _ibus[8];
assign ijtag_ce = _ibus[7];
assign ijtag_se = _ibus[6];
assign ijtag_ue = _ibus[5];
assign ijtag_sel = _ibus[4];
assign ijtag_si = _ibus[3];
assign PD_TOP_bisr_shift_en = _ibus[2];
assign PD_TOP_bisr_clk = _ibus[1];
assign PD_TOP_bisr_reset = _ibus[0];

assign _sim_obus[0] = ijtag_so;

// Change Path Variables & Get Argument 
integer      _change_path; 
integer      _change_out_path; 
reg[512*8:1]  _new_path; 
reg[512*8:1]  _new_out_path; 
reg[512*8:1]  _new_filename; 
reg[512*8:1]  _vcd_dump_file_name; 
reg[512*8:1]  _utvcd_dump_file_name; 
reg[512*8:1]  _fsdb_dump_file_name; 
reg[512*8:1]  _qwave_dump_file_name; 
reg[512*8:1]  _tmp_filename; 
initial begin 
  _change_path = 0; 
  _change_out_path = 0; 
  if ($value$plusargs("NEWPATH=%s", _new_path)) begin 
    $display("Found New Path %0s\n", _new_path); 
    _change_path = 1; 
  end 
  if ($value$plusargs("NEWOUTPATH=%s", _new_out_path)) begin 
    $display("Found New Out Path %0s\n", _new_out_path); 
    _change_out_path = 1; 
  end 

`ifdef VCD
    $sformat(_vcd_dump_file_name, "ICLNetwork.v.dump");
    if(_change_out_path) begin 
      $sformat(_vcd_dump_file_name, "%0s/%0s", _new_out_path, _vcd_dump_file_name);
    end
    $dumpfile(_vcd_dump_file_name);
    $dumpvars;
`endif

`ifdef UTVCD
    $sformat(_utvcd_dump_file_name, "ICLNetwork.v.dump");
    if(_change_out_path) begin 
      $sformat(_utvcd_dump_file_name, "%0s/%0s", _new_out_path, _utvcd_dump_file_name);
    end
    $dumpfile(_utvcd_dump_file_name);
    $vtDump;
    $dumpvars;
`endif

`ifdef debussy
    $sformat(_fsdb_dump_file_name, "ICLNetwork.v.fsdb");
    if(_change_out_path) begin 
      $sformat(_fsdb_dump_file_name, "%0s/%0s", _new_out_path, _fsdb_dump_file_name);
    end
    $fsdbDumpfile(_fsdb_dump_file_name);
    $fsdbDumpvars;
`endif

`ifdef QWAVE
    $sformat(_qwave_dump_file_name, "ICLNetwork.v.qwave.db");
    if(_change_out_path) begin 
      $sformat(_qwave_dump_file_name, "%0s/%0s", _new_out_path, _qwave_dump_file_name);
    end
    $qwavedb_dumpvars_filename(_qwave_dump_file_name);
    $qwavedb_dumpvars;
`endif
end 

reg /* sparse */[63:0] _nam_obus[0:0];
initial begin 
   if(_change_path) begin 
     $sformat(_new_filename,"%0s/ICLNetwork.v.po.name",_new_path); 
     $display("Loading %0s\n", _new_filename ); 
     $readmemh(_new_filename,_nam_obus,0,0); 
   end 
   else begin
     $display("Loading ICLNetwork.v.po.name");
     $readmemh("ICLNetwork.v.po.name",_nam_obus,0,0);
   end 
end 


// Declare Wires for tracking Vector Type
reg[3:0] _MGCDFT_VECTYPE ;
reg[160:0] _procedure_string ;
reg mgcdft_test_setup, mgcdft_load_unload, mgcdft_shift,
     mgcdft_single_shift, mgcdft_shift_extra, 
     mgcdft_shadow_control, mgcdft_master_observe,
     mgcdft_shadow_observe, mgcdft_skew_load, 
     mgcdft_seq_transparent, mgcdft_launch_capture,
     mgcdft_clock_proc, mgcdft_test_end, mgcdft_unknown; 

event       set_vector_type;
always @(_MGCDFT_VECTYPE) begin
  assign mgcdft_test_setup      = 1'b0;
  assign mgcdft_load_unload     = 1'b0;
  assign mgcdft_shift           = 1'b0;
  assign mgcdft_single_shift    = 1'b0;
  assign mgcdft_shift_extra     = 1'b0;
  assign mgcdft_shadow_control  = 1'b0;
  assign mgcdft_master_observe  = 1'b0;
  assign mgcdft_shadow_observe  = 1'b0;
  assign mgcdft_skew_load       = 1'b0;
  assign mgcdft_seq_transparent = 1'b0;
  assign mgcdft_launch_capture  = 1'b0;
  assign mgcdft_clock_proc      = 1'b0;
  assign mgcdft_test_end        = 1'b0;
  assign mgcdft_unknown         = 1'b0;
  case (_MGCDFT_VECTYPE)
    4'b0001: begin
               assign mgcdft_test_setup      = 1'b1;
               _procedure_string = "TEST_SETUP";
               _scan_shift_count = 0;
             end
    4'b0010: begin
               assign mgcdft_load_unload     = 1'b1;
               _procedure_string = "LOAD";
               _scan_shift_count = 0;
             end
    4'b0011: begin
               assign mgcdft_shift           = 1'b1;
               _procedure_string = "SHIFT";
               if(!(_scan_shift_count)) begin
                 _scan_shift_count = 1;
               end
             end
    4'b0100: begin
               assign mgcdft_single_shift    = 1'b1;
               _procedure_string = "SINGLE_SHIFT";
               if(!(_scan_shift_count)) begin
                 _scan_shift_count = 1;
               end
             end
    4'b0101: begin
               assign mgcdft_shift_extra     = 1'b1;
               _procedure_string = "SHIFT_EXTRA";
               _scan_shift_count = 0;
             end
    4'b0110: begin
               assign mgcdft_shadow_control  = 1'b1;
               _procedure_string = "SHADOW_CONTROL";
               _scan_shift_count = 0;
             end
    4'b0111: begin
               assign mgcdft_master_observe  = 1'b1;
               _procedure_string = "MASTER_OBSERVE";
               _scan_shift_count = 0;
             end
    4'b1000: begin
               assign mgcdft_shadow_observe  = 1'b1;
               _procedure_string = "SHADOW_OBSERVE";
               _scan_shift_count = 0;
             end
    4'b1001: begin
               assign mgcdft_skew_load       = 1'b1;
               _procedure_string = "SKEW_LOAD";
               _scan_shift_count = 0;
             end
    4'b1010: begin
               assign mgcdft_seq_transparent = 1'b1;
               _procedure_string = "SEQ_TRANSPARENT";
               _scan_shift_count = 0;
             end
    4'b1011: begin
               assign mgcdft_launch_capture  = 1'b1;
               _procedure_string = "LAUNCH_CAPTURE";
               _scan_shift_count = 0;
             end
    4'b1101: begin
               assign mgcdft_clock_proc      = 1'b1;
               _procedure_string = "CLOCK_PROC";
               _scan_shift_count = 0;
             end
    4'b1111: begin
               assign mgcdft_test_end        = 1'b1;
               _procedure_string = "TEST_END";
               _scan_shift_count = 0;
             end
    4'b0000: begin
               assign mgcdft_unknown         = 1'b1;
               _procedure_string = "UNKNOWN";
               _scan_shift_count = 0;
             end
    default: begin
               assign mgcdft_unknown         = 1'b1;
               _procedure_string = "UNKNOWN";
               _scan_shift_count = 0;
             end
  endcase
end

function integer do_finish_summary;
input local_end_vec_file_ok;
integer local_end_vec_file_ok;
begin
  if (_end_vec_file_ok) begin
     $display("\nSimulation finished at time %.0f", $realtime);
     $display("Number of miscompares            = %d", _compare_fail_count);
     $display("Number of 0/1 compares           = %d", _compare_count);
     $display("Number of Z compares             = %d\n", _compare_z_count);
  end

  if ((_end_vec_file_ok) && (_compare_fail == 0) && (_compare_fail_count == 0)) begin
     $display("No error between simulated and expected patterns\n");
  end

  if ((_compare_fail != 0) || (_compare_fail_count != 0)) begin
     $display("Error between simulated and expected patterns\n");
  end

do_finish_summary = local_end_vec_file_ok;
end
endfunction


event       compare_exp_sim_obus;
always @(compare_exp_sim_obus) begin
 _found_fail = 0;
 if (_do_compare) begin
 for(_bit_count = 0;
     (_bit_count < 1);
      _bit_count =_bit_count +1) begin
   if (_msk_obus[_bit_count] === 1'b1) begin
     if (_exp_obus[_bit_count] === 1'bZ) begin
       _compare_z_count = _compare_z_count + 1;
     end
     else begin
       _compare_count = _compare_count + 1;
     end
   end
 end
  if (_exp_obus !== _sim_obus) begin
     for(_bit_count = 0;
         ((_bit_count < 1)&&(_found_fail==0));
          _bit_count =_bit_count +1) begin
        if ((_msk_obus[_bit_count] === 1'b1) &&
            (_exp_obus[_bit_count] !== _sim_obus[_bit_count])) begin
           _found_fail = 1;
           _found_fail_per_cycle = 1;
        end
     end
  end
  if (_found_fail == 1) begin
     for(_bit_count = 0;
         ((_bit_count < 1)&&((_miscompare_limit==0)||(_compare_fail<=_miscompare_limit)));
          _bit_count =_bit_count +1) begin
      if ((_msk_obus[_bit_count] === 1'b1) &&
          (_exp_obus[_bit_count] !== _sim_obus[_bit_count])) begin
        _compare_fail_count = _compare_fail_count + 1;
        $write($realtime, "ns: Mismatch at pin %d name %s, Simulated %b, Expected %b\n",_bit_count,_nam_obus[_bit_count],_sim_obus[_bit_count],_exp_obus[_bit_count]);
        if (_write_DIAG_file == 1) begin
          if (_DIAG_file_header == 0) begin
            if ((_start_pat > -1) && (_end_pat > -1)) begin
              $sformat(_tmp_filename, "ICLNetwork.v_%0d_%0d.fail",
                       _start_pat, _end_pat);
            end
            else if (_start_pat > -1) begin
              $sformat(_tmp_filename, "ICLNetwork.v_%0d.fail",
                       _start_pat);
            end
            else if (_end_pat > -1) begin
              $sformat(_tmp_filename, "ICLNetwork.v__%0d.fail",
                       _end_pat);
            end
            else begin
              $sformat(_tmp_filename, "ICLNetwork.v.fail");
            end
            if(_change_out_path) begin 
              $sformat(_tmp_filename, "%0s/%0s", _new_out_path, _tmp_filename);
            end
            _diag_file = $fopen(_tmp_filename);
            if (_diag_file == 0) begin
              $display("ERROR: Couldn't open .fail file %0s, simulation aborted\n", _tmp_filename);
              ->before_finish;
              #0;
              $finish;
            end
            if(_change_out_path) begin 
              $fwrite(_diag_file, "// This File is simulation generated (%0s/ICLNetwork.v)\n", _new_out_path);
            end
            else begin
              $fwrite(_diag_file, "// This File is simulation generated (ICLNetwork.v)\n");
            end
            $fwrite(_diag_file, "format cycle\n");
            $fwrite(_diag_file, " failures_begin\n");
            $fwrite(_diag_file, "//cycle_number  PO_name  expected_value  simulated_value  ");
            $fwrite(_diag_file, "pattern_id  chain_name  cell_number\n\n");
            _DIAG_file_header = 1;
          end
          if ((_pattern_count == _last_fail_pattern) && (_pattern_count == 0)) begin
             _fail_pattern_cnt = 1; 
          end
          if (_pattern_count > _last_fail_pattern) begin 
             _fail_pattern_cnt = _fail_pattern_cnt + 1;
             _last_fail_pattern = _pattern_count;
          end

          $fwrite(_diag_file, "%d  %s ", _cycle_count, _nam_obus[_bit_count]);
          case ( _exp_obus[_bit_count] )
            1'b1: begin
                    $fwrite(_diag_file, "            H"); 
                  end
            1'b0: begin
                    $fwrite(_diag_file, "            L"); 
                  end
            1'bZ: begin
                    $fwrite(_diag_file, "            Z"); 
                  end
          endcase
          case ( _sim_obus[_bit_count] )
            1'b1: begin
                    $fwrite(_diag_file, " H  // Pattern %d ", _pattern_count); 
                  end
            1'b0: begin
                    $fwrite(_diag_file, " L  // Pattern %d ", _pattern_count); 
                  end
            1'bZ: begin
                    $fwrite(_diag_file, " Z  // Pattern %d ", _pattern_count); 
                  end
            1'bX: begin
                    $fwrite(_diag_file, " X  // Pattern %d ", _pattern_count); 
                  end
          endcase
         if (_scan_shift_count == 0) begin
                 $fwrite(_diag_file, ", simulation_time=%.0f\n", $realtime);
         end // EndIf  _ScanShift_count
        end // EndIf _write_DIAG_file
        if (_write_MASK_file == 1) begin
          if (_MASK_file_header == 0) begin
            if ((_start_pat > -1) && (_end_pat > -1)) begin
              $sformat(_tmp_filename, "ICLNetwork.v_%0d_%0d.mask",
                       _start_pat, _end_pat);
            end
            else if (_start_pat > -1) begin
              $sformat(_tmp_filename, "ICLNetwork.v_%0d.mask",
                       _start_pat);
            end
            else if (_end_pat > -1) begin
              $sformat(_tmp_filename, "ICLNetwork.v__%0d.mask",
                       _end_pat);
            end
            else begin
              $sformat(_tmp_filename, "ICLNetwork.v.mask");
            end
            if(_change_out_path) begin 
              $sformat(_tmp_filename, "%0s/%0s", _new_out_path, _tmp_filename);
            end
            _mask_file = $fopen(_tmp_filename);
            if (_mask_file == 0) begin
              $display("ERROR: Couldn't open .mask file %0s, simulation aborted\n", _tmp_filename);
              ->before_finish;
              #0;
              $finish;
            end
            $fwrite(_mask_file, "%s\n%s\n", "type mask", "");
            _MASK_file_header = 1;
          end
          if (_chain_test_ == 0) begin
            $fwrite(_mask_file, "%d %s\n", _pattern_count,_nam_obus[_bit_count]);
          end
          if (_chain_test_ == 1) begin
            $fwrite(_mask_file, "// %d %s\n", _pattern_count,_nam_obus[_bit_count]);
          end
        end
      end
    end
    _compare_fail = _compare_fail + 1;
  end
 end // if _do_compare
end

reg[38:0]     mem [0:3441479];
firebird7_in DUT_inst (.fdfx_powergood(fdfx_powergood), 
     .secure_red(secure_red), .secure_orange(secure_orange), 
     .secure_insysbist(secure_insysbist), .ijtag_tck(ijtag_tck), 
     .ijtag_reset(ijtag_reset), .ijtag_ce(ijtag_ce), 
     .ijtag_se(ijtag_se), .ijtag_ue(ijtag_ue), 
     .ijtag_sel(ijtag_sel), .ijtag_si(ijtag_si), 
     .PD_TOP_bisr_shift_en(PD_TOP_bisr_shift_en), 
     .PD_TOP_bisr_clk(PD_TOP_bisr_clk), 
     .PD_TOP_bisr_reset(PD_TOP_bisr_reset), .ijtag_so(ijtag_so));

initial begin
_in_restart = 0;
while (_in_restart < 2) begin
_in_restart = _in_restart + 1;
_restart_state     = -1;
if ($value$plusargs("RESTART=%d", _restart_state)) begin
  $display(" Found RESTART   %d", _restart_state);
end

if ((_in_restart < 2) || (_restart_state == 1)) begin
mgcdft_save_signal = 1'b0;
mgcdft_restart_signal = 1'b0;
if (_restart_state == 1) begin
  #0;
  mgcdft_restart_signal = 1'b1;
//  $display("Reading checkpoint ICLNetwork.v.dat");
//  $restart("ICLNetwork.v.dat");
end

#0;
mgcdft_save_signal = 1'b0;
mgcdft_restart_signal = 1'b0;
_compare_fail = 0;
_compare_fail_count = 0;
_compare_count = 0;
_compare_z_count = 0;
_pattern_count = 0;
_cycle_count = 0;
_save_cycle_count = 0;
_write_DIAG_file = 0; // change to 1, to generate file
_write_MASK_file = 0; // change to 1, to generate file
_DIAG_file_header = 0;
_diag_file = 0;
_diag_chain_header = 0;
_diag_scan_header = 0;
_fail_pattern_cnt = 0;
_last_fail_pattern = 0;
_MASK_file_header = 0;
_mask_file = 0;
_chain_test_ = 0;
_par_shift_cnt = 0;
_report_bit_cnt = 0;
// Limit # of miscompares before aborting simulation (non-zero)
_miscompare_limit = 0; 
_end_vec_file_ok = 0; 
_scan_shift_count = 0;
_run_testsetup  = 0;
_in_testsetup = 0;
_start_pat      = -1;
_end_pat        = -1;
_end_after_setup = -1;
_no_setup       = -1;
_save_state     = -1;
_override_cfg   = 0;
_pat_num        = -1;
_in_range       = 1;
_do_compare     = 1;
_in_chaintest   = 0;

_skipped_patterns = 0;

_end_simulation   = 0;

if ($value$plusargs("STARTPAT=%d", _start_pat)) begin
  if (_start_pat > -1) begin
    $display(" Found Start pattern number %d", _start_pat);
    _in_range = 0;
    _do_compare = 0;
  end
  else begin
    $display(" Ignoring negative Start pattern number   %d", _start_pat);
    _start_pat = -1;
  end
end
if ($value$plusargs("ENDPAT=%d", _end_pat)) begin
  if (_end_pat > -1) begin
    $display(" Found End pattern number   %d", _end_pat);
  end
  else begin
    $display(" Ignoring negative End pattern number   %d", _end_pat);
    _end_pat = -1;
  end
end

if ($value$plusargs("CHAINTEST=%d", _in_chaintest)) begin
  if (_in_chaintest) begin
    $display(" Found ChainTest identifier %d", _in_chaintest);
  end
end

if ($value$plusargs("END_AFTER_SETUP=%d", _end_after_setup)) begin
  $display(" Found End after setup   %d", _end_after_setup);
  if (_end_after_setup > 0) begin
    _end_pat = 0;
    _in_chaintest = 1;
  end
end

if ($value$plusargs("SKIP_SETUP=%d", _no_setup)) begin
  $display(" Found Skip setup   %d", _no_setup);
  if (_no_setup > 0) begin
    if (_start_pat == -1) begin
      _start_pat = 0;
      _in_chaintest = 1;
    end
    _run_testsetup = 0;
    _in_range = 0;
    _do_compare = 0;
  end
end

if ($value$plusargs("SAVE=%d", _save_state)) begin
  $display(" Found SAVE   %d", _save_state);
end

if ($value$plusargs("CONFIG=%0s", _cfg_file_name)) begin
  $display(" Found CONFIG identifier   %0s", _cfg_file_name);
  _override_cfg = 1;
end
else begin
  _cfg_file_name = "ICLNetwork.v.cfg";
end

if ((_end_pat != -1) && (_end_pat < _start_pat)) begin
  _start_pat = -1;
  _in_range = 1;
  _do_compare = 1;
  $display("STARTPAT less than ENDPAT, ignoring STARTPAT ");
end
_allow_bad_message_index = 0;
if ($value$plusargs("ALLOW_BAD_MESSAGE_INDEX=%d", _allow_bad_message_index)) begin
  $display(" Found ALLOW_BAD_MESSAGE_INDEX %d", _allow_bad_message_index);
end

// read vector config file
if(_override_cfg) begin 
  _config_file = $fopen(_cfg_file_name, "r");
end
else begin
if(_change_path) begin 
  $sformat(_new_filename,"%0s/ICLNetwork.v.cfg",_new_path); 
  _config_file = $fopen(_new_filename, "r");
end
else begin
  _config_file = $fopen("ICLNetwork.v.cfg", "r");
end

end

if (_config_file == 0) begin
  $display("ERROR: Couldn't open configuration file, simulation aborted\n");
  ->before_finish;
  #0;
  $finish;
end
_fstat = 0;
if (_start_pat != -1) begin
  if (_no_setup > 0) begin
  $display("BEGIN pattern read loop  Skip test_setup\n");
  end
  else if (_in_chaintest == 0) begin
    if (_end_pat != -1) begin
    $display("BEGIN pattern read loop  Start pattern (%d) End pattern (%d)\n",
_start_pat,_end_pat);
    end
    else begin
    $display("BEGIN pattern read loop  Start pattern (%d) \n",
_start_pat);
    end
  end
  else begin
    if (_end_pat != -1) begin
    $display("BEGIN pattern read loop  Start chain pattern (%d) End chain pattern (%d)\n",
_start_pat,_end_pat);
    end
    else begin
    $display("BEGIN pattern read loop  Start chain pattern (%d)\n",
_start_pat);
    end
  end
end
else if (_end_pat != -1) begin
  if (_end_after_setup > 0) begin
  $display("BEGIN pattern read loop  End after test_setup\n");
  end
  else if (_in_chaintest == 0) begin
  $display("BEGIN pattern read loop  End pattern (%d)\n", _end_pat);
  end
  else begin
  $display("BEGIN pattern read loop  End chain pattern (%d)\n", _end_pat);
  end
end

// begin pattern read loop
while (!$feof(_config_file) && (!_end_simulation))
begin
         _fstat = $fscanf(_config_file, "%s", _vec_file_name);
         _fstat = $fscanf(_config_file, "%d", _max_index);
   if (_fstat != -1) begin
         _fstat = $fscanf(_config_file, "%d", _vec_pat_count);
         if (_fstat == -1) begin
           _vec_pat_count = -1;
         end
         // skip .vec file if _start_pat greater than this
         if ((_start_pat != -1) && !_in_range && (_vec_pat_count != -1) &&
             !_in_testsetup && !_in_chaintest &&
             ((_pat_num + _vec_pat_count) < _start_pat)) begin
           _max_index = -1;
           if (_chain_test_) begin
             _pattern_count = 0;
             _pat_num = 0;
           end
           _pat_num = _pat_num + _vec_pat_count;
           _skipped_patterns = _skipped_patterns + _vec_pat_count;
           _end_vec_file_ok = 1;
           _chain_test_ = 0;
            $display("Skipping %0s\n", _vec_file_name);
         end
         else begin
          if(_change_path) begin 
            $sformat(_new_filename,"%0s/%0s",_new_path, _vec_file_name); 
            $display("Loading %0s\n", _new_filename ); 
            $readmemb(_new_filename, mem, 0, _max_index);
         end
         else begin
           $display("Loading %0s\n", _vec_file_name);
           $readmemb(_vec_file_name, mem, 0, _max_index);
         end
           _end_vec_file_ok = 0;
         end
   end
   else begin
     _max_index = -1;
     _vec_pat_count = -1;
   end
   _scan_index = 0;
   _repeat_count_nest[0] = 0;
   _repeat_count = 0;
   _repeat_depth = 0;
   _message_index = 0;
   _save_index[0] = 0;
   for (_index=0; _index <= _max_index; _index = _index+1)
   begin
      vect = mem[_index];
      _exp_obus=1'bX;
      _msk_obus=1'b0;
      _MGCDFT_VECTYPE = vect[3:0];
      _pat_type = vect[6:4];
      _tp_num = vect[7];
      //    Range Check
      if ((_start_pat != -1) && ((_start_pat != 0) || (!_in_testsetup)) &&
          ((!_chain_test_)||(_chain_test_ && _in_chaintest))) begin
        if (!_chain_test_ && _in_chaintest && !_in_range && !_in_testsetup) begin
          _in_range = 1;
          _do_compare = 1;
        end
        if ((_pat_num == _start_pat) && !_in_range) begin
          _in_range = 1;
          _do_compare = 0;
          _pattern_count = (_pat_num - 1);
          if (_pattern_count < 0) begin
            _pattern_count = 0;
          end
        end
        if (_pat_num == (_start_pat + 1)) begin
          _do_compare = 1;
        end
      end

      if ((_end_pat != -1) && (_pattern_count > _end_pat) && 
          ((!_chain_test_)||(_chain_test_ && _in_chaintest))) begin
         // simulation complete, exit
         _index = _max_index + 1;
         _end_vec_file_ok = 1;
         _end_simulation = 1;
      end
      if ((_index > 0) && (_end_pat != -1) && !_chain_test_ && _in_chaintest &&
          !_run_testsetup) begin
         // simulation complete, exit
         _index = _max_index + 1;
         _end_vec_file_ok = 1;
         _end_simulation = 1;
      end
      if ((_in_range) || (_run_testsetup)) begin
      case (_pat_type)
         3'b000:  begin // end vector
            _index = _max_index + 1;
         end // end vector
         3'b001: ;// skip scan vector, handled by shift vector
         3'b010:  begin // broadside vector
            _found_fail_per_cycle = 0;
            if (vect[8] == 1'b1) begin
               _pattern_count = _pattern_count + 1;
               _par_shift_cnt = 0;
              if ((!_do_compare) && (_pattern_count >= _start_pat)) begin
                _do_compare = 1;
              end
              if ((_end_pat != -1) && (_pattern_count > _end_pat) && 
                  ((!_chain_test_)||(_chain_test_ && _in_chaintest))) begin
                // simulation complete, exit
                _index = _max_index + 1;
                _end_vec_file_ok = 1;
                _end_simulation = 1;
                _in_range = 0;
              end
            end
            if (vect[8] === 1'bz) begin
               _pattern_count = 0;
               _par_shift_cnt = 0;
            end
            if(_scan_shift_count) begin
               _scan_shift_count = _scan_shift_count + 1;
            end
            case (_tp_num)
               1'b1: begin // timeplate 1 - gen_tp1
                  _ibus[9] = 1'b0;
                  _ibus[1] = 1'b0;
                  _ibus[13:10] = vect[24:21];
                  _ibus[8] = vect[19];
                  _ibus[3] = vect[14];
                  _ibus[0] = vect[11];

                  #24; // 24 ns
                  _exp_obus[0] = vect[10];
                  _msk_obus[0] = vect[9];
                  #0;
                  ->compare_exp_sim_obus;
                  if ((_miscompare_limit)&&(_compare_fail>=_miscompare_limit)) begin
                    $display("ERROR: exceeded miscompare limit(%d), exiting simulation",_miscompare_limit);
                    _end_vec_file_ok = 1;
                    if (_DIAG_file_header == 1) begin
                       if (_diag_scan_header==1) begin
                         $fwrite(_diag_file, "last_pattern_applied %d\n", _pattern_count);
                       end
                       $fwrite(_diag_file, "// failing_patterns=%d simulated_patterns=%d", _fail_pattern_cnt, (_pattern_count+1));
                       $fwrite(_diag_file, " simulation_time=", $realtime, ";\n");
                       $fwrite(_diag_file, "failure_file_end\n");
                       $fclose(_diag_file);
                    end
                    _end_vec_file_ok = do_finish_summary(_end_vec_file_ok);
                    ->before_finish;
                    #0;
                    $finish;
                  end

                  #1; // 25 ns
                  _ibus[9] = vect[20];
                  _ibus[1] = vect[12];

                  #24; // 49 ns
                  _ibus[5] = vect[16];

                  #26; // 75 ns
                  _ibus[9] = 1'b0;
                  _ibus[1] = 1'b0;

                  #24; // 99 ns
                  _ibus[7:6] = vect[18:17];
                  _ibus[4] = vect[15];
                  _ibus[2] = vect[13];

                  #1; // 100 ns
               end // timeplate 1 - gen_tp1
               default: begin
                  $display("ERROR: corrupt timeplate number\n");
                  ->before_finish;
                  #0;
                  $finish;
               end
            endcase // _tp_num
            _cycle_count = _cycle_count + 1;
            _par_shift_cnt = 0;
         end // broadside vector
         3'b011:  begin // status message vector
            _message_index = vect[38:7];
            case (_message_index)
               0: begin
                  $display("Begin chain test\n");
                 _chain_test_ = 1;
                  _diag_chain_header = 0;
               end
               1: begin
                 _chain_test_ = 0;
                  if (_diag_chain_header) begin
                    $fwrite(_diag_file, "last_pattern_applied %d\n", _pattern_count);
                  end
                  _diag_scan_header = 0;
                  if ((_start_pat > -1) || (_end_pat > -1)) begin
                    if (_pat_num > -1) begin
                        $display("Simulated chain pattern %d\n",_pat_num);
                    end
                  end
                  _pat_num = -1;
                  _pattern_count = 0;
                  $display("End chain test\n");
               end
               2: begin
                  $display("Status update: simulated through pattern %d\n",_pattern_count);
               end
               3: begin
                  _end_vec_file_ok = 1;
                  if ((_start_pat > -1) || (_end_pat > -1)) begin
                    if (_pat_num > -1) begin
                      if (!_chain_test_) begin
                        $display("Simulated pattern %d\n",_pat_num);
                      end
                    end
                  end
               end
               4: begin // start of atpg pattern
                  if ((_start_pat > -1) || (_end_pat > -1)) begin
                    if (_pat_num > -1) begin
                      if (_chain_test_) begin
                        $display("Simulated chain pattern %d\n",_pat_num);
                      end
                      else begin
                        $display("Simulated pattern %d\n",_pat_num);
                      end
                    end
                  end
                  _pat_num = _pat_num + 1;
                  _run_testsetup  = 0;
                  _in_testsetup  = 0;
                  if (_end_after_setup  > 0) begin
                    //simulation complete, exit
                    _index = _max_index + 1;
                    _end_vec_file_ok = 1;
                    _end_simulation = 1;
                    _in_range = 0;
                  end
               end
               20: begin
                  $display($realtime, "ns: Pattern_set firebird7_in");
               end
               21: begin
                  $display($realtime, "ns:  Activate selection of the following scan muxes:");
               end
               22: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_sti_inst.scan_in_mux, selection 1: sib, ltest_en = 2'bxx -> scan_in_mux = ijtag_si");
               end
               23: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               24: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               25: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               26: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               27: begin
                  $display($realtime, "ns:  Scan in verification pattern to the following scan registers:");
               end
               28: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.sib, load value = 0");
               end
               29: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.sib, load value = 1");
               end
               30: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.sib, load value = 1");
               end
               31: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.sib, load value = 0");
               end
               32: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_sti_inst.sib, load value = 1");
               end
               33: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_sti_inst.sib ");
                  end
               end
               34: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_spare_inst.sib ");
                  end
               end
               35: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_upm_inst.sib ");
                  end
               end
               36: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.sib ");
                  end
               end
               37: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.sib ");
                  end
               end
               38: begin
                  $display($realtime, "ns:  Scan out verification pattern from the following scan registers:");
               end
               39: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.sib, expected value = 0");
               end
               40: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.sib, expected value = 1");
               end
               41: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.sib, expected value = 1");
               end
               42: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.sib, expected value = 0");
               end
               43: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_sti_inst.sib, expected value = 1");
               end
               44: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_sti_inst.scan_in_mux, selection 0: sib, ltest_en = 2'b10 -> scan_in_mux = ijtag_from_so");
               end
               45: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_sti_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               46: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_sti_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               47: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_mbist_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               48: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.sib, load value = 1");
               end
               49: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.sib, load value = 0");
               end
               50: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.sib, load value = 0");
               end
               51: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.sib, load value = 1");
               end
               52: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_mbist_inst.sib, load value = 1");
               end
               53: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_sti_ctrl_inst.tdr[0:0], load value = 0");
               end
               54: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_mbist_inst.sib ");
                  end
               end
               55: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.sib, expected value = 1");
               end
               56: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.sib, expected value = 0");
               end
               57: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.sib, expected value = 0");
               end
               58: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.sib, expected value = 1");
               end
               59: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_mbist_inst.sib, expected value = 1");
               end
               60: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_sti_ctrl_inst.tdr[0:0], expected value = 0");
               end
               61: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_sti_ctrl_inst.tdr[0] ");
                  end
               end
               62: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_mbist_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               63: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.DiagnosisReadyScanMux, selection 0: sib = 1'b0 -> DiagnosisReadyScanMux = ijtag_si");
               end
               64: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ctl_sib_mux_inst, selection 0: ctl_group_sib = 1'b0 -> ctl_sib_mux_inst = tdr_bypass_sib_inst");
               end
               65: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_mux_inst, selection 0: tdr_bypass_sib_inst = 1'b0 -> tdr_bypass_sib_mux_inst = si");
               end
               66: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_inst, load value = 0");
               end
               67: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ctl_group_sib, load value = 0");
               end
               68: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.sib, load value = 1");
               end
               69: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ctl_group_sib ");
                  end
               end
               70: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_inst ");
                  end
               end
               71: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_inst, expected value = 0");
               end
               72: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ctl_group_sib, expected value = 0");
               end
               73: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.sib, expected value = 1");
               end
               74: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.sib ");
                  end
               end
               75: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.DiagnosisReadyScanMux, selection 1: sib = 1'b1 -> DiagnosisReadyScanMux = tdr");
               end
               76: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_inst, load value = 1");
               end
               77: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.tdr, load value = 0");
               end
               78: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.tdr ");
                  end
               end
               79: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_inst, expected value = 1");
               end
               80: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_diagnosis_ready_inst.tdr, expected value = 0");
               end
               81: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ctl_sib_mux_inst, selection 1: ctl_group_sib = 1'b1 -> ctl_sib_mux_inst = mbist_go_0");
               end
               82: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.fromBistMux_0, selection 1: bistEn_int[0], BIST_SETUP_tdr[1], ChainBypassMode = 3'bxxx -> fromBistMux_0 = tdr_bypass_sib_inst");
               end
               83: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_done_0, load value = 1");
               end
               84: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_go_0, load value = 0");
               end
               85: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_done_0, expected value = 1");
               end
               86: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_go_0, expected value = 0");
               end
               87: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_go_0 ");
                  end
               end
               88: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.mbist_done_0 ");
                  end
               end
               89: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.tdr_bypass_sib_mux_inst, selection 1: tdr_bypass_sib_inst = 1'b1 -> tdr_bypass_sib_mux_inst = ENABLE_MEM_RESET_tdr");
               end
               90: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP_tdr[2:0], load value = 000");
               end
               91: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.TCK_MODE_tdr, load value = 1");
               end
               92: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHAIN_BYPASS_EN_tdr, load value = 1");
               end
               93: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG_tdr, load value = 1");
               end
               94: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE1_tdr, load value = 1");
               end
               95: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE0_tdr, load value = 1");
               end
               96: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET_tdr, load value = 1");
               end
               97: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED_tdr, load value = 1");
               end
               98: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.PRESERVE_FUSE_REGISTER_tdr, load value = 1");
               end
               99: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_DIAG_EN_tdr, load value = 0");
               end
               100: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIRA_EN_tdr, load value = 0");
               end
               101: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.MEM_ARRAY_DUMP_MODE_tdr, load value = 0");
               end
               102: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE1_tdr, load value = 0");
               end
               103: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE0_tdr, load value = 1");
               end
               104: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SELECT_TEST_DATA_tdr, load value = 1");
               end
               105: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.REDUCED_ADDRESS_COUNT_tdr, load value = 1");
               end
               106: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ENABLE_MEM_RESET_tdr, load value = 1");
               end
               107: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP_tdr[2:0], expected value = 000");
               end
               108: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.TCK_MODE_tdr, expected value = 1");
               end
               109: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHAIN_BYPASS_EN_tdr, expected value = 1");
               end
               110: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG_tdr, expected value = 1");
               end
               111: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE1_tdr, expected value = 1");
               end
               112: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE0_tdr, expected value = 1");
               end
               113: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET_tdr, expected value = 1");
               end
               114: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED_tdr, expected value = 1");
               end
               115: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.PRESERVE_FUSE_REGISTER_tdr, expected value = 1");
               end
               116: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_DIAG_EN_tdr, expected value = 0");
               end
               117: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIRA_EN_tdr, expected value = 0");
               end
               118: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.MEM_ARRAY_DUMP_MODE_tdr, expected value = 0");
               end
               119: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE1_tdr, expected value = 0");
               end
               120: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE0_tdr, expected value = 1");
               end
               121: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SELECT_TEST_DATA_tdr, expected value = 1");
               end
               122: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.REDUCED_ADDRESS_COUNT_tdr, expected value = 1");
               end
               123: begin
                  $display($realtime, "ns:   ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ENABLE_MEM_RESET_tdr, expected value = 1");
               end
               124: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.ENABLE_MEM_RESET_tdr ");
                  end
               end
               125: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.REDUCED_ADDRESS_COUNT_tdr ");
                  end
               end
               126: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SELECT_TEST_DATA_tdr ");
                  end
               end
               127: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE0_tdr ");
                  end
               end
               128: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ALGO_MODE1_tdr ");
                  end
               end
               129: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.MEM_ARRAY_DUMP_MODE_tdr ");
                  end
               end
               130: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIRA_EN_tdr ");
                  end
               end
               131: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_DIAG_EN_tdr ");
                  end
               end
               132: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.PRESERVE_FUSE_REGISTER_tdr ");
                  end
               end
               133: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHECK_REPAIR_NEEDED_tdr ");
                  end
               end
               134: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_ASYNC_RESET_tdr ");
                  end
               end
               135: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE0_tdr ");
                  end
               end
               136: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.FL_CNT_MODE1_tdr ");
                  end
               end
               137: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.INCLUDE_MEM_RESULTS_REG_tdr ");
                  end
               end
               138: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.CHAIN_BYPASS_EN_tdr ");
                  end
               end
               139: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.TCK_MODE_tdr ");
                  end
               end
               140: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP_tdr[0] ");
                  end
               end
               141: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP_tdr[1] ");
                  end
               end
               142: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_firebird7_in_gate1_tessent_mbist_bap_inst.BIST_SETUP_tdr[2] ");
                  end
               end
               143: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               144: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_red_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               145: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               146: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_insysbist_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               147: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_green_inst.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = ijtag_si");
               end
               148: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_green_inst.sib, load value = 0");
               end
               149: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_insysbist_inst.sib, load value = 0");
               end
               150: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.sib, load value = 1");
               end
               151: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_red_inst.sib, load value = 1");
               end
               152: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_spare_red_inst.sib ");
                  end
               end
               153: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_spare_orange_inst.sib ");
                  end
               end
               154: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_spare_insysbist_inst.sib ");
                  end
               end
               155: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_sib_spare_green_inst.sib ");
                  end
               end
               156: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_green_inst.sib, expected value = 0");
               end
               157: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_insysbist_inst.sib, expected value = 0");
               end
               158: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.sib, expected value = 1");
               end
               159: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_red_inst.sib, expected value = 1");
               end
               160: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_red_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               161: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_red_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               162: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_red_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               163: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.sib, load value = 0");
               end
               164: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[7:0], load value = 10011110");
               end
               165: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.sib, expected value = 0");
               end
               166: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[7:0], expected value = 10011110");
               end
               167: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[0] ");
                  end
               end
               168: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[1] ");
                  end
               end
               169: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[2] ");
                  end
               end
               170: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[3] ");
                  end
               end
               171: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[4] ");
                  end
               end
               172: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[5] ");
                  end
               end
               173: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[6] ");
                  end
               end
               174: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_red_tdr_inst.tdr[7] ");
                  end
               end
               175: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_orange_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               176: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               177: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_orange_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               178: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[7:0], load value = 00111100");
               end
               179: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[7:0], expected value = 00111100");
               end
               180: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[0] ");
                  end
               end
               181: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[1] ");
                  end
               end
               182: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[2] ");
                  end
               end
               183: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[3] ");
                  end
               end
               184: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[4] ");
                  end
               end
               185: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[5] ");
                  end
               end
               186: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[6] ");
                  end
               end
               187: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_orange_tdr_inst.tdr[7] ");
                  end
               end
               188: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_insysbist_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               189: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_insysbist_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               190: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_spare_insysbist_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               191: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0], load value = 01111000");
               end
               192: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[7:0], expected value = 01111000");
               end
               193: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[0] ");
                  end
               end
               194: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[1] ");
                  end
               end
               195: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[2] ");
                  end
               end
               196: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[3] ");
                  end
               end
               197: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[4] ");
                  end
               end
               198: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[5] ");
                  end
               end
               199: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[6] ");
                  end
               end
               200: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_insysbist_tdr_inst.tdr[7] ");
                  end
               end
               201: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_spare_green_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               202: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[7:0], load value = 11110000");
               end
               203: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[7:0], expected value = 11110000");
               end
               204: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[0] ");
                  end
               end
               205: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[1] ");
                  end
               end
               206: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[2] ");
                  end
               end
               207: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[3] ");
                  end
               end
               208: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[4] ");
                  end
               end
               209: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[5] ");
                  end
               end
               210: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[6] ");
                  end
               end
               211: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = firebird7_in_gate1_tessent_tdr_spare_green_tdr_inst.tdr[7] ");
                  end
               end
               212: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_upm_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               213: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_upm_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               214: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_upm_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               215: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               216: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               217: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               218: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               219: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               220: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               221: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               222: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               223: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               224: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               225: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               226: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_CBB.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               227: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               228: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               229: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               230: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.scan_in_mux, selection 0: sib = 1'b0 -> scan_in_mux = si");
               end
               231: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.sib[0:0], load value = 1");
               end
               232: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 1");
               end
               233: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 1");
               end
               234: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 1");
               end
               235: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_CBB.sib[0:0], load value = 1");
               end
               236: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 0");
               end
               237: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 0");
               end
               238: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 0");
               end
               239: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.sib[0:0], load value = 0");
               end
               240: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 1");
               end
               241: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 1");
               end
               242: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 1");
               end
               243: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.sib[0:0], load value = 1");
               end
               244: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 0");
               end
               245: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 0");
               end
               246: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 1");
               end
               247: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.sib[0:0], expected value = 1");
               end
               248: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 1");
               end
               249: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 1");
               end
               250: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 1");
               end
               251: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_CBB.sib[0:0], expected value = 1");
               end
               252: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 0");
               end
               253: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 0");
               end
               254: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 0");
               end
               255: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.sib[0:0], expected value = 0");
               end
               256: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 1");
               end
               257: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 1");
               end
               258: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 1");
               end
               259: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.sib[0:0], expected value = 1");
               end
               260: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 0");
               end
               261: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 0");
               end
               262: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 1");
               end
               263: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.SIB_UPM_STATUS.sib[0] ");
                  end
               end
               264: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.SIB_COUNTER_RESULT.sib[0] ");
                  end
               end
               265: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.SIB_COUNTER_CTRL.sib[0] ");
                  end
               end
               266: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.SIB_CBB.sib[0] ");
                  end
               end
               267: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.SIB_UPM_STATUS.sib[0] ");
                  end
               end
               268: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.SIB_COUNTER_RESULT.sib[0] ");
                  end
               end
               269: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.SIB_COUNTER_CTRL.sib[0] ");
                  end
               end
               270: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.SIB_CBB.sib[0] ");
                  end
               end
               271: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.SIB_UPM_STATUS.sib[0] ");
                  end
               end
               272: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.SIB_COUNTER_RESULT.sib[0] ");
                  end
               end
               273: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.SIB_COUNTER_CTRL.sib[0] ");
                  end
               end
               274: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.SIB_CBB.sib[0] ");
                  end
               end
               275: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.SIB_UPM_STATUS.sib[0] ");
                  end
               end
               276: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.SIB_COUNTER_RESULT.sib[0] ");
                  end
               end
               277: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.SIB_COUNTER_CTRL.sib[0] ");
                  end
               end
               278: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.SIB_CBB.sib[0] ");
                  end
               end
               279: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               280: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 1");
               end
               281: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 1");
               end
               282: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 1");
               end
               283: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.sib[0:0], load value = 1");
               end
               284: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.sib[0:0], load value = 1");
               end
               285: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.UPM_STATUS_reg.DR[24:0], load value = 0011110000111111110000000");
               end
               286: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 1");
               end
               287: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 1");
               end
               288: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 1");
               end
               289: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.sib[0:0], expected value = 1");
               end
               290: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.sib[0:0], expected value = 1");
               end
               291: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.UPM_STATUS_reg.DR[24:0], expected value = 0011110000111111110000000");
               end
               292: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[0] ");
                  end
               end
               293: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[1] ");
                  end
               end
               294: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[2] ");
                  end
               end
               295: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[3] ");
                  end
               end
               296: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[4] ");
                  end
               end
               297: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[5] ");
                  end
               end
               298: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[6] ");
                  end
               end
               299: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[7] ");
                  end
               end
               300: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[8] ");
                  end
               end
               301: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[9] ");
                  end
               end
               302: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[10] ");
                  end
               end
               303: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[11] ");
                  end
               end
               304: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[12] ");
                  end
               end
               305: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[13] ");
                  end
               end
               306: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[14] ");
                  end
               end
               307: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[15] ");
                  end
               end
               308: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[16] ");
                  end
               end
               309: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[17] ");
                  end
               end
               310: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[18] ");
                  end
               end
               311: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[19] ");
                  end
               end
               312: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[20] ");
                  end
               end
               313: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[21] ");
                  end
               end
               314: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[22] ");
                  end
               end
               315: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[23] ");
                  end
               end
               316: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.UPM_STATUS_reg.DR[24] ");
                  end
               end
               317: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               318: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.sib[0:0], load value = 0");
               end
               319: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.sib[0:0], load value = 0");
               end
               320: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.sib[0:0], load value = 0");
               end
               321: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[20:0], load value = 011110000111111110000");
               end
               322: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.sib[0:0], expected value = 0");
               end
               323: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.sib[0:0], expected value = 0");
               end
               324: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.sib[0:0], expected value = 0");
               end
               325: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[20:0], expected value = 011110000111111110000");
               end
               326: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[0] ");
                  end
               end
               327: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[1] ");
                  end
               end
               328: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[2] ");
                  end
               end
               329: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[3] ");
                  end
               end
               330: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[4] ");
                  end
               end
               331: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[5] ");
                  end
               end
               332: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[6] ");
                  end
               end
               333: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[7] ");
                  end
               end
               334: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[8] ");
                  end
               end
               335: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[9] ");
                  end
               end
               336: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[10] ");
                  end
               end
               337: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[11] ");
                  end
               end
               338: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[12] ");
                  end
               end
               339: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[13] ");
                  end
               end
               340: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[14] ");
                  end
               end
               341: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[15] ");
                  end
               end
               342: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[16] ");
                  end
               end
               343: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[17] ");
                  end
               end
               344: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[18] ");
                  end
               end
               345: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[19] ");
                  end
               end
               346: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_RESULT_reg.DR[20] ");
                  end
               end
               347: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               348: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[25:0], load value = 11110000111111110000000011");
               end
               349: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[25:0], expected value = 11110000111111110000000011");
               end
               350: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[0] ");
                  end
               end
               351: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[1] ");
                  end
               end
               352: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[2] ");
                  end
               end
               353: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[3] ");
                  end
               end
               354: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[4] ");
                  end
               end
               355: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[5] ");
                  end
               end
               356: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[6] ");
                  end
               end
               357: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[7] ");
                  end
               end
               358: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[8] ");
                  end
               end
               359: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[9] ");
                  end
               end
               360: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[10] ");
                  end
               end
               361: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[11] ");
                  end
               end
               362: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[12] ");
                  end
               end
               363: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[13] ");
                  end
               end
               364: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[14] ");
                  end
               end
               365: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[15] ");
                  end
               end
               366: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[16] ");
                  end
               end
               367: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[17] ");
                  end
               end
               368: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[18] ");
                  end
               end
               369: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[19] ");
                  end
               end
               370: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[20] ");
                  end
               end
               371: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[21] ");
                  end
               end
               372: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[22] ");
                  end
               end
               373: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[23] ");
                  end
               end
               374: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[24] ");
                  end
               end
               375: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.COUNTER_CTRL_reg.DR[25] ");
                  end
               end
               376: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.SIB_CBB.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               377: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.sib[0:0], load value = 0");
               end
               378: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.CBB_reg.DR[27:0], load value = 1110000111111110000000011111");
               end
               379: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.sib[0:0], expected value = 0");
               end
               380: begin
                  $display($realtime, "ns:   u_upm_0.upm_inst.CBB_reg.DR[27:0], expected value = 1110000111111110000000011111");
               end
               381: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[0] ");
                  end
               end
               382: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[1] ");
                  end
               end
               383: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[2] ");
                  end
               end
               384: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[3] ");
                  end
               end
               385: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[4] ");
                  end
               end
               386: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[5] ");
                  end
               end
               387: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[6] ");
                  end
               end
               388: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[7] ");
                  end
               end
               389: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[8] ");
                  end
               end
               390: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[9] ");
                  end
               end
               391: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[10] ");
                  end
               end
               392: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[11] ");
                  end
               end
               393: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[12] ");
                  end
               end
               394: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[13] ");
                  end
               end
               395: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[14] ");
                  end
               end
               396: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[15] ");
                  end
               end
               397: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[16] ");
                  end
               end
               398: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[17] ");
                  end
               end
               399: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[18] ");
                  end
               end
               400: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[19] ");
                  end
               end
               401: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[20] ");
                  end
               end
               402: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[21] ");
                  end
               end
               403: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[22] ");
                  end
               end
               404: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[23] ");
                  end
               end
               405: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[24] ");
                  end
               end
               406: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[25] ");
                  end
               end
               407: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[26] ");
                  end
               end
               408: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_0.upm_inst.CBB_reg.DR[27] ");
                  end
               end
               409: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               410: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.UPM_STATUS_reg.DR[24:0], load value = 1100001111111100000000111");
               end
               411: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.UPM_STATUS_reg.DR[24:0], expected value = 1100001111111100000000111");
               end
               412: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[0] ");
                  end
               end
               413: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[1] ");
                  end
               end
               414: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[2] ");
                  end
               end
               415: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[3] ");
                  end
               end
               416: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[4] ");
                  end
               end
               417: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[5] ");
                  end
               end
               418: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[6] ");
                  end
               end
               419: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[7] ");
                  end
               end
               420: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[8] ");
                  end
               end
               421: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[9] ");
                  end
               end
               422: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[10] ");
                  end
               end
               423: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[11] ");
                  end
               end
               424: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[12] ");
                  end
               end
               425: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[13] ");
                  end
               end
               426: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[14] ");
                  end
               end
               427: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[15] ");
                  end
               end
               428: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[16] ");
                  end
               end
               429: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[17] ");
                  end
               end
               430: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[18] ");
                  end
               end
               431: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[19] ");
                  end
               end
               432: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[20] ");
                  end
               end
               433: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[21] ");
                  end
               end
               434: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[22] ");
                  end
               end
               435: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[23] ");
                  end
               end
               436: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.UPM_STATUS_reg.DR[24] ");
                  end
               end
               437: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               438: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[20:0], load value = 100001111111100000000");
               end
               439: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[20:0], expected value = 100001111111100000000");
               end
               440: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[0] ");
                  end
               end
               441: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[1] ");
                  end
               end
               442: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[2] ");
                  end
               end
               443: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[3] ");
                  end
               end
               444: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[4] ");
                  end
               end
               445: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[5] ");
                  end
               end
               446: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[6] ");
                  end
               end
               447: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[7] ");
                  end
               end
               448: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[8] ");
                  end
               end
               449: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[9] ");
                  end
               end
               450: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[10] ");
                  end
               end
               451: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[11] ");
                  end
               end
               452: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[12] ");
                  end
               end
               453: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[13] ");
                  end
               end
               454: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[14] ");
                  end
               end
               455: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[15] ");
                  end
               end
               456: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[16] ");
                  end
               end
               457: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[17] ");
                  end
               end
               458: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[18] ");
                  end
               end
               459: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[19] ");
                  end
               end
               460: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_RESULT_reg.DR[20] ");
                  end
               end
               461: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               462: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[25:0], load value = 00001111111100000000111111");
               end
               463: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[25:0], expected value = 00001111111100000000111111");
               end
               464: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[0] ");
                  end
               end
               465: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[1] ");
                  end
               end
               466: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[2] ");
                  end
               end
               467: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[3] ");
                  end
               end
               468: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[4] ");
                  end
               end
               469: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[5] ");
                  end
               end
               470: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[6] ");
                  end
               end
               471: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[7] ");
                  end
               end
               472: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[8] ");
                  end
               end
               473: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[9] ");
                  end
               end
               474: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[10] ");
                  end
               end
               475: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[11] ");
                  end
               end
               476: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[12] ");
                  end
               end
               477: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[13] ");
                  end
               end
               478: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[14] ");
                  end
               end
               479: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[15] ");
                  end
               end
               480: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[16] ");
                  end
               end
               481: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[17] ");
                  end
               end
               482: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[18] ");
                  end
               end
               483: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[19] ");
                  end
               end
               484: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[20] ");
                  end
               end
               485: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[21] ");
                  end
               end
               486: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[22] ");
                  end
               end
               487: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[23] ");
                  end
               end
               488: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[24] ");
                  end
               end
               489: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.COUNTER_CTRL_reg.DR[25] ");
                  end
               end
               490: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.SIB_CBB.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               491: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.CBB_reg.DR[27:0], load value = 0001111111100000000111111111");
               end
               492: begin
                  $display($realtime, "ns:   u_upm_1.upm_inst.CBB_reg.DR[27:0], expected value = 0001111111100000000111111111");
               end
               493: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[0] ");
                  end
               end
               494: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[1] ");
                  end
               end
               495: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[2] ");
                  end
               end
               496: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[3] ");
                  end
               end
               497: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[4] ");
                  end
               end
               498: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[5] ");
                  end
               end
               499: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[6] ");
                  end
               end
               500: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[7] ");
                  end
               end
               501: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[8] ");
                  end
               end
               502: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[9] ");
                  end
               end
               503: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[10] ");
                  end
               end
               504: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[11] ");
                  end
               end
               505: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[12] ");
                  end
               end
               506: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[13] ");
                  end
               end
               507: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[14] ");
                  end
               end
               508: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[15] ");
                  end
               end
               509: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[16] ");
                  end
               end
               510: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[17] ");
                  end
               end
               511: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[18] ");
                  end
               end
               512: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[19] ");
                  end
               end
               513: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[20] ");
                  end
               end
               514: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[21] ");
                  end
               end
               515: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[22] ");
                  end
               end
               516: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[23] ");
                  end
               end
               517: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[24] ");
                  end
               end
               518: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[25] ");
                  end
               end
               519: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[26] ");
                  end
               end
               520: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_1.upm_inst.CBB_reg.DR[27] ");
                  end
               end
               521: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               522: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.UPM_STATUS_reg.DR[24:0], load value = 0011111111000000001111111");
               end
               523: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.UPM_STATUS_reg.DR[24:0], expected value = 0011111111000000001111111");
               end
               524: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[0] ");
                  end
               end
               525: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[1] ");
                  end
               end
               526: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[2] ");
                  end
               end
               527: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[3] ");
                  end
               end
               528: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[4] ");
                  end
               end
               529: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[5] ");
                  end
               end
               530: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[6] ");
                  end
               end
               531: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[7] ");
                  end
               end
               532: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[8] ");
                  end
               end
               533: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[9] ");
                  end
               end
               534: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[10] ");
                  end
               end
               535: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[11] ");
                  end
               end
               536: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[12] ");
                  end
               end
               537: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[13] ");
                  end
               end
               538: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[14] ");
                  end
               end
               539: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[15] ");
                  end
               end
               540: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[16] ");
                  end
               end
               541: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[17] ");
                  end
               end
               542: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[18] ");
                  end
               end
               543: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[19] ");
                  end
               end
               544: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[20] ");
                  end
               end
               545: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[21] ");
                  end
               end
               546: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[22] ");
                  end
               end
               547: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[23] ");
                  end
               end
               548: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.UPM_STATUS_reg.DR[24] ");
                  end
               end
               549: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               550: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[20:0], load value = 011111111000000001111");
               end
               551: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[20:0], expected value = 011111111000000001111");
               end
               552: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[0] ");
                  end
               end
               553: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[1] ");
                  end
               end
               554: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[2] ");
                  end
               end
               555: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[3] ");
                  end
               end
               556: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[4] ");
                  end
               end
               557: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[5] ");
                  end
               end
               558: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[6] ");
                  end
               end
               559: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[7] ");
                  end
               end
               560: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[8] ");
                  end
               end
               561: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[9] ");
                  end
               end
               562: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[10] ");
                  end
               end
               563: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[11] ");
                  end
               end
               564: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[12] ");
                  end
               end
               565: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[13] ");
                  end
               end
               566: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[14] ");
                  end
               end
               567: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[15] ");
                  end
               end
               568: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[16] ");
                  end
               end
               569: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[17] ");
                  end
               end
               570: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[18] ");
                  end
               end
               571: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[19] ");
                  end
               end
               572: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_RESULT_reg.DR[20] ");
                  end
               end
               573: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               574: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[25:0], load value = 11111111000000001111111111");
               end
               575: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[25:0], expected value = 11111111000000001111111111");
               end
               576: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[0] ");
                  end
               end
               577: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[1] ");
                  end
               end
               578: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[2] ");
                  end
               end
               579: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[3] ");
                  end
               end
               580: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[4] ");
                  end
               end
               581: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[5] ");
                  end
               end
               582: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[6] ");
                  end
               end
               583: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[7] ");
                  end
               end
               584: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[8] ");
                  end
               end
               585: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[9] ");
                  end
               end
               586: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[10] ");
                  end
               end
               587: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[11] ");
                  end
               end
               588: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[12] ");
                  end
               end
               589: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[13] ");
                  end
               end
               590: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[14] ");
                  end
               end
               591: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[15] ");
                  end
               end
               592: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[16] ");
                  end
               end
               593: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[17] ");
                  end
               end
               594: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[18] ");
                  end
               end
               595: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[19] ");
                  end
               end
               596: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[20] ");
                  end
               end
               597: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[21] ");
                  end
               end
               598: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[22] ");
                  end
               end
               599: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[23] ");
                  end
               end
               600: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[24] ");
                  end
               end
               601: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.COUNTER_CTRL_reg.DR[25] ");
                  end
               end
               602: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.SIB_CBB.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               603: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.CBB_reg.DR[27:0], load value = 1111111000000001111111111111");
               end
               604: begin
                  $display($realtime, "ns:   u_upm_2.upm_inst.CBB_reg.DR[27:0], expected value = 1111111000000001111111111111");
               end
               605: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[0] ");
                  end
               end
               606: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[1] ");
                  end
               end
               607: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[2] ");
                  end
               end
               608: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[3] ");
                  end
               end
               609: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[4] ");
                  end
               end
               610: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[5] ");
                  end
               end
               611: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[6] ");
                  end
               end
               612: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[7] ");
                  end
               end
               613: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[8] ");
                  end
               end
               614: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[9] ");
                  end
               end
               615: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[10] ");
                  end
               end
               616: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[11] ");
                  end
               end
               617: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[12] ");
                  end
               end
               618: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[13] ");
                  end
               end
               619: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[14] ");
                  end
               end
               620: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[15] ");
                  end
               end
               621: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[16] ");
                  end
               end
               622: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[17] ");
                  end
               end
               623: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[18] ");
                  end
               end
               624: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[19] ");
                  end
               end
               625: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[20] ");
                  end
               end
               626: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[21] ");
                  end
               end
               627: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[22] ");
                  end
               end
               628: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[23] ");
                  end
               end
               629: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[24] ");
                  end
               end
               630: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[25] ");
                  end
               end
               631: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[26] ");
                  end
               end
               632: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_2.upm_inst.CBB_reg.DR[27] ");
                  end
               end
               633: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_UPM_STATUS.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               634: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.UPM_STATUS_reg.DR[24:0], load value = 1111110000000011111111111");
               end
               635: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.UPM_STATUS_reg.DR[24:0], expected value = 1111110000000011111111111");
               end
               636: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[0] ");
                  end
               end
               637: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[1] ");
                  end
               end
               638: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[2] ");
                  end
               end
               639: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[3] ");
                  end
               end
               640: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[4] ");
                  end
               end
               641: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[5] ");
                  end
               end
               642: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[6] ");
                  end
               end
               643: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[7] ");
                  end
               end
               644: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[8] ");
                  end
               end
               645: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[9] ");
                  end
               end
               646: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[10] ");
                  end
               end
               647: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[11] ");
                  end
               end
               648: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[12] ");
                  end
               end
               649: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[13] ");
                  end
               end
               650: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[14] ");
                  end
               end
               651: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[15] ");
                  end
               end
               652: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[16] ");
                  end
               end
               653: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[17] ");
                  end
               end
               654: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[18] ");
                  end
               end
               655: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[19] ");
                  end
               end
               656: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[20] ");
                  end
               end
               657: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[21] ");
                  end
               end
               658: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[22] ");
                  end
               end
               659: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[23] ");
                  end
               end
               660: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.UPM_STATUS_reg.DR[24] ");
                  end
               end
               661: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_RESULT.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               662: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[20:0], load value = 111110000000011111111");
               end
               663: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[20:0], expected value = 111110000000011111111");
               end
               664: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[0] ");
                  end
               end
               665: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[1] ");
                  end
               end
               666: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[2] ");
                  end
               end
               667: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[3] ");
                  end
               end
               668: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[4] ");
                  end
               end
               669: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[5] ");
                  end
               end
               670: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[6] ");
                  end
               end
               671: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[7] ");
                  end
               end
               672: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[8] ");
                  end
               end
               673: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[9] ");
                  end
               end
               674: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[10] ");
                  end
               end
               675: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[11] ");
                  end
               end
               676: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[12] ");
                  end
               end
               677: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[13] ");
                  end
               end
               678: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[14] ");
                  end
               end
               679: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[15] ");
                  end
               end
               680: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[16] ");
                  end
               end
               681: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[17] ");
                  end
               end
               682: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[18] ");
                  end
               end
               683: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[19] ");
                  end
               end
               684: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_RESULT_reg.DR[20] ");
                  end
               end
               685: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_COUNTER_CTRL.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               686: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[25:0], load value = 11110000000011111111111111");
               end
               687: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[25:0], expected value = 11110000000011111111111111");
               end
               688: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[0] ");
                  end
               end
               689: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[1] ");
                  end
               end
               690: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[2] ");
                  end
               end
               691: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[3] ");
                  end
               end
               692: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[4] ");
                  end
               end
               693: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[5] ");
                  end
               end
               694: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[6] ");
                  end
               end
               695: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[7] ");
                  end
               end
               696: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[8] ");
                  end
               end
               697: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[9] ");
                  end
               end
               698: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[10] ");
                  end
               end
               699: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[11] ");
                  end
               end
               700: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[12] ");
                  end
               end
               701: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[13] ");
                  end
               end
               702: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[14] ");
                  end
               end
               703: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[15] ");
                  end
               end
               704: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[16] ");
                  end
               end
               705: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[17] ");
                  end
               end
               706: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[18] ");
                  end
               end
               707: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[19] ");
                  end
               end
               708: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[20] ");
                  end
               end
               709: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[21] ");
                  end
               end
               710: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[22] ");
                  end
               end
               711: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[23] ");
                  end
               end
               712: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[24] ");
                  end
               end
               713: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.COUNTER_CTRL_reg.DR[25] ");
                  end
               end
               714: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.SIB_CBB.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = inst_so");
               end
               715: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.CBB_reg.DR[27:0], load value = 1110000000011111111111111110");
               end
               716: begin
                  $display($realtime, "ns:   u_upm_3.upm_inst.CBB_reg.DR[27:0], expected value = 1110000000011111111111111110");
               end
               717: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[0] ");
                  end
               end
               718: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[1] ");
                  end
               end
               719: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[2] ");
                  end
               end
               720: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[3] ");
                  end
               end
               721: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[4] ");
                  end
               end
               722: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[5] ");
                  end
               end
               723: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[6] ");
                  end
               end
               724: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[7] ");
                  end
               end
               725: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[8] ");
                  end
               end
               726: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[9] ");
                  end
               end
               727: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[10] ");
                  end
               end
               728: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[11] ");
                  end
               end
               729: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[12] ");
                  end
               end
               730: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[13] ");
                  end
               end
               731: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[14] ");
                  end
               end
               732: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[15] ");
                  end
               end
               733: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[16] ");
                  end
               end
               734: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[17] ");
                  end
               end
               735: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[18] ");
                  end
               end
               736: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[19] ");
                  end
               end
               737: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[20] ");
                  end
               end
               738: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[21] ");
                  end
               end
               739: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[22] ");
                  end
               end
               740: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[23] ");
                  end
               end
               741: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[24] ");
                  end
               end
               742: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[25] ");
                  end
               end
               743: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[26] ");
                  end
               end
               744: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = u_upm_3.upm_inst.CBB_reg.DR[27] ");
                  end
               end
               745: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_pwrmgmt_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               746: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_array_pwrmgmt_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               747: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_array_pwrmgmt_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               748: begin
                  $display($realtime, "ns:   ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[3:0], load value = 0011");
               end
               749: begin
                  $display($realtime, "ns:   ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[3:0], expected value = 0011");
               end
               750: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[0] ");
                  end
               end
               751: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[1] ");
                  end
               end
               752: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[2] ");
                  end
               end
               753: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_pwrmgmt_ctrl_hdspsr_inst.tdr[3] ");
                  end
               end
               754: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_sib_array_trim_fuse_override_inst.scan_in_mux, selection 1: sib = 1'b1 -> scan_in_mux = ijtag_from_so");
               end
               755: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_array_trim_fuse_override_secure_mux_inst.M1, selection 0: mux_select = 1'b0 -> M1 = mux_in0");
               end
               756: begin
                  $display($realtime, "ns:   firebird7_in_gate1_tessent_scanmux_array_trim_fuse_override_secure_mux_inst.M1, selection 1: mux_select = 1'b1 -> M1 = mux_in1");
               end
               757: begin
                  $display($realtime, "ns:   ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[19:0], load value = 01111000011111111000");
               end
               758: begin
                  $display($realtime, "ns:   ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[19:0], expected value = 01111000011111111000");
               end
               759: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[0] ");
                  end
               end
               760: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[1] ");
                  end
               end
               761: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[2] ");
                  end
               end
               762: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[3] ");
                  end
               end
               763: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[4] ");
                  end
               end
               764: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[5] ");
                  end
               end
               765: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[6] ");
                  end
               end
               766: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[7] ");
                  end
               end
               767: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[8] ");
                  end
               end
               768: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[9] ");
                  end
               end
               769: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[10] ");
                  end
               end
               770: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[11] ");
                  end
               end
               771: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[12] ");
                  end
               end
               772: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[13] ");
                  end
               end
               773: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[14] ");
                  end
               end
               774: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[15] ");
                  end
               end
               775: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[16] ");
                  end
               end
               776: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[17] ");
                  end
               end
               777: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[18] ");
                  end
               end
               778: begin
                  if (_found_fail_per_cycle == 1) begin
                    $display($realtime, "ns: Previous scan out : pin ijtag_so , ICL register = ph0_i_firebird7_in_gate1_tessent_tdr_array_trim_fuse_override_ctrl_hdspsr_inst.tdr[19] ");
                  end
               end
               default: begin
                  $display("ERROR: corrupt message index\n");
                  if (_allow_bad_message_index != 1) begin
                     ->before_finish;
                     #0;
                     $finish;
                  end
               end
            endcase // _message_index
         end
         default: begin
            $display("ERROR: corrupt vector number\n");
            ->before_finish;
            #0;
            $finish;
         end
      endcase
   end // if in_range
      else begin
      case (_pat_type)  // _pat_type = vect[6:4]; 
         3'b011:  begin // status message vector
            _message_index = vect[38:7]; 
            case (_message_index)
               0: begin
                  _chain_test_ = 1;
                  _diag_chain_header = 0;
               end
               1: begin
                  if (_pat_num > -1) begin
                    $display("Skipped chain pattern %d\n",_pat_num);
                  end
                  _chain_test_ = 0;
                  _pat_num = -1;
                  $display("End chain test\n");
               end
               3: begin 
                  _end_vec_file_ok = 1;
                  if (_pat_num > -1) begin
                    if (!_chain_test_) begin
                      $display("Skipped pattern %d\n",_pat_num);
                    end
                  end
               end
               4: begin // start of atpg pattern
                  if (_pat_num > -1) begin
                    if (!_chain_test_) begin
                      _skipped_patterns = _skipped_patterns + 1;
                    end
                  end
                  if (_pat_num > -1) begin
                    if (_chain_test_) begin
                      $display("Skipped chain pattern %d\n",_pat_num);
                    end
                    else begin
                      $display("Skipped pattern %d\n",_pat_num);
                    end
                  end
                  _pat_num = _pat_num + 1;
                  _run_testsetup  = 0;
                  _in_testsetup  = 0;
                  if (_end_after_setup  > 0) begin
                    //simulation complete, exit
                    _index = _max_index + 1;
                    _end_vec_file_ok = 1;
                    _end_simulation = 1;
                    _in_range = 0;
                  end
               end
               default: begin
                  // Skip
               end
            endcase // _message_index
         end
         default: begin
            // Skip
         end
      endcase
      end // else !_in_range
   end // index loop
end // file_cnt loop

if (_save_state == 1) begin
  #1;
  mgcdft_save_signal = 1'b1;
//  $display("Writing checkpoint ICLNetwork.v.dat");
//  $save("ICLNetwork.v.dat");
  if (_in_restart == 2) begin
    _in_restart = 1;
  end
  _end_vec_file_ok = do_finish_summary(_end_vec_file_ok);
  #1;
  $stop;
end
end
end  // while _in_restart
 if (_DIAG_file_header == 1) begin
    if (_diag_scan_header==1) begin
      $fwrite(_diag_file, "last_pattern_applied %d\n", _pattern_count);
    end
    $fwrite(_diag_file, "// failing_patterns=%d simulated_patterns=%d", _fail_pattern_cnt, (_pattern_count+1));
    $fwrite(_diag_file, " simulation_time=", $realtime, ";\n");
    $fwrite(_diag_file, "failure_file_end\n");
    $fclose(_diag_file);
 end


#1;
if (_end_vec_file_ok == 0) begin
  $display("ERROR: Pattern file corrupted, simulation aborted\n");
end
_end_vec_file_ok = do_finish_summary(_end_vec_file_ok);
#1;
->before_finish;
#0;
$finish;
end
endmodule
