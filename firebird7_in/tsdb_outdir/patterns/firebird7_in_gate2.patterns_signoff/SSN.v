//
// Verilog format test patterns produced by Tessent Shell 2022.4
// Filename       : ./tsdb_outdir/patterns/firebird7_in_gate2.patterns_signoff/SSN.v
// Idstamp        : 2022.4:ec94:6099:0:0000
// Date           : Sun Nov  5 09:17:11 2023
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


`timescale 1ps / 1ps

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
reg[19:0]    _found_fail_obus;
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
real        _time_incr;
real        _last_time;
real        ts_min_time_unit;
real        ts_gen_tp1_period;
real        ts_gen_tp1_force_pi;
real        ts_gen_tp1_measure_po;
real        ts_gen_tp1_pulse_clock_offset;
real        ts_gen_tp1_pulse_clock_width;
real        ts_gen_tp1_PD_TOP_bisr_clk_force;
real        ts_gen_tp1_ijtag_tck_force;
real        ts_gen_tp1_ssn_other_edge_input_bus_ports_force;
real        ts_gen_tp1_ssn_output_bus_ports_measure;
real        ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset;
real        ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_width;
real        ts_gen_tp1_ijtag_ctrl_period;
real        ts_gen_tp1_ijtag_ctrl_force_pi;
real        ts_gen_tp1_ijtag_ctrl_measure_po;
real        ts_gen_tp1_ijtag_ctrl_pulse_clock_offset;
real        ts_gen_tp1_ijtag_ctrl_pulse_clock_width;
real        ts_gen_tp1_ijtag_ctrl_PD_TOP_bisr_clk_force;
real        ts_gen_tp1_ijtag_ctrl_ijtag_tck_force;
real        ts_gen_tp1_ijtag_ctrl_ssn_other_edge_input_bus_ports_force;
real        ts_gen_tp1_ijtag_ctrl_ssn_output_bus_ports_measure;
real        ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset;
real        ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_width;
real        ts_gen_tp1_ijtag_ctrl_PD_TOP_bisr_shift_en_force;
real        ts_gen_tp1_ijtag_ctrl_ijtag_ce_force;
real        ts_gen_tp1_ijtag_ctrl_ijtag_se_force;
real        ts_gen_tp1_ijtag_ctrl_ijtag_sel_force;
real        ts_gen_tp1_ijtag_ctrl_ijtag_ue_force;
reg[30:0]    _ibus;
reg[19:0]    _exp_obus, _msk_obus;
wire[19:0]   _sim_obus;
reg[2:0]    _pat_type;
reg         _tp_num;
reg         mgcdft_save_signal, mgcdft_restart_signal;
reg[79:0]   vect;

wire fdfx_powergood, ijtag_tck, ijtag_reset, ijtag_ce, ijtag_se, ijtag_ue, 
     ijtag_sel, PD_TOP_bisr_shift_en, PD_TOP_bisr_clk, PD_TOP_bisr_reset, 
     ssn_bus_clock, \ssn_bus_in[19] , \ssn_bus_in[18] , \ssn_bus_in[17] , 
     \ssn_bus_in[16] , \ssn_bus_in[15] , \ssn_bus_in[14] , \ssn_bus_in[13] , 
     \ssn_bus_in[12] , \ssn_bus_in[11] , \ssn_bus_in[10] , \ssn_bus_in[9] , 
     \ssn_bus_in[8] , \ssn_bus_in[7] , \ssn_bus_in[6] , \ssn_bus_in[5] , 
     \ssn_bus_in[4] , \ssn_bus_in[3] , \ssn_bus_in[2] , \ssn_bus_in[1] , 
     \ssn_bus_in[0] , \ssn_bus_out[19] , \ssn_bus_out[18] , \ssn_bus_out[17] , 
     \ssn_bus_out[16] , \ssn_bus_out[15] , \ssn_bus_out[14] , \ssn_bus_out[13] , 
     \ssn_bus_out[12] , \ssn_bus_out[11] , \ssn_bus_out[10] , \ssn_bus_out[9] , 
     \ssn_bus_out[8] , \ssn_bus_out[7] , \ssn_bus_out[6] , \ssn_bus_out[5] , 
     \ssn_bus_out[4] , \ssn_bus_out[3] , \ssn_bus_out[2] , \ssn_bus_out[1] , 
     \ssn_bus_out[0] ;

event       before_finish;
assign fdfx_powergood = _ibus[30];
assign ijtag_tck = _ibus[29];
assign ijtag_reset = _ibus[28];
assign ijtag_ce = _ibus[27];
assign ijtag_se = _ibus[26];
assign ijtag_ue = _ibus[25];
assign ijtag_sel = _ibus[24];
assign PD_TOP_bisr_shift_en = _ibus[23];
assign PD_TOP_bisr_clk = _ibus[22];
assign PD_TOP_bisr_reset = _ibus[21];
assign ssn_bus_clock = _ibus[20];
assign \ssn_bus_in[19]  = _ibus[19];
assign \ssn_bus_in[18]  = _ibus[18];
assign \ssn_bus_in[17]  = _ibus[17];
assign \ssn_bus_in[16]  = _ibus[16];
assign \ssn_bus_in[15]  = _ibus[15];
assign \ssn_bus_in[14]  = _ibus[14];
assign \ssn_bus_in[13]  = _ibus[13];
assign \ssn_bus_in[12]  = _ibus[12];
assign \ssn_bus_in[11]  = _ibus[11];
assign \ssn_bus_in[10]  = _ibus[10];
assign \ssn_bus_in[9]  = _ibus[9];
assign \ssn_bus_in[8]  = _ibus[8];
assign \ssn_bus_in[7]  = _ibus[7];
assign \ssn_bus_in[6]  = _ibus[6];
assign \ssn_bus_in[5]  = _ibus[5];
assign \ssn_bus_in[4]  = _ibus[4];
assign \ssn_bus_in[3]  = _ibus[3];
assign \ssn_bus_in[2]  = _ibus[2];
assign \ssn_bus_in[1]  = _ibus[1];
assign \ssn_bus_in[0]  = _ibus[0];

assign _sim_obus[19] = \ssn_bus_out[19] ;
assign _sim_obus[18] = \ssn_bus_out[18] ;
assign _sim_obus[17] = \ssn_bus_out[17] ;
assign _sim_obus[16] = \ssn_bus_out[16] ;
assign _sim_obus[15] = \ssn_bus_out[15] ;
assign _sim_obus[14] = \ssn_bus_out[14] ;
assign _sim_obus[13] = \ssn_bus_out[13] ;
assign _sim_obus[12] = \ssn_bus_out[12] ;
assign _sim_obus[11] = \ssn_bus_out[11] ;
assign _sim_obus[10] = \ssn_bus_out[10] ;
assign _sim_obus[9] = \ssn_bus_out[9] ;
assign _sim_obus[8] = \ssn_bus_out[8] ;
assign _sim_obus[7] = \ssn_bus_out[7] ;
assign _sim_obus[6] = \ssn_bus_out[6] ;
assign _sim_obus[5] = \ssn_bus_out[5] ;
assign _sim_obus[4] = \ssn_bus_out[4] ;
assign _sim_obus[3] = \ssn_bus_out[3] ;
assign _sim_obus[2] = \ssn_bus_out[2] ;
assign _sim_obus[1] = \ssn_bus_out[1] ;
assign _sim_obus[0] = \ssn_bus_out[0] ;

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
    $sformat(_vcd_dump_file_name, "SSN.v.dump");
    if(_change_out_path) begin 
      $sformat(_vcd_dump_file_name, "%0s/%0s", _new_out_path, _vcd_dump_file_name);
    end
    $dumpfile(_vcd_dump_file_name);
    $dumpvars;
`endif

`ifdef UTVCD
    $sformat(_utvcd_dump_file_name, "SSN.v.dump");
    if(_change_out_path) begin 
      $sformat(_utvcd_dump_file_name, "%0s/%0s", _new_out_path, _utvcd_dump_file_name);
    end
    $dumpfile(_utvcd_dump_file_name);
    $vtDump;
    $dumpvars;
`endif

`ifdef debussy
    $sformat(_fsdb_dump_file_name, "SSN.v.fsdb");
    if(_change_out_path) begin 
      $sformat(_fsdb_dump_file_name, "%0s/%0s", _new_out_path, _fsdb_dump_file_name);
    end
    $fsdbDumpfile(_fsdb_dump_file_name);
    $fsdbDumpvars;
`endif

`ifdef QWAVE
    $sformat(_qwave_dump_file_name, "SSN.v.qwave.db");
    if(_change_out_path) begin 
      $sformat(_qwave_dump_file_name, "%0s/%0s", _new_out_path, _qwave_dump_file_name);
    end
    $qwavedb_dumpvars_filename(_qwave_dump_file_name);
    $qwavedb_dumpvars;
`endif
end 

reg /* sparse */[119:0] _nam_obus[19:0];
initial begin 
   if(_change_path) begin 
     $sformat(_new_filename,"%0s/SSN.v.po.name",_new_path); 
     $display("Loading %0s\n", _new_filename ); 
     $readmemh(_new_filename,_nam_obus,19,0); 
   end 
   else begin
     $display("Loading SSN.v.po.name");
     $readmemh("SSN.v.po.name",_nam_obus,19,0);
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
     (_bit_count < 20);
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
         ((_bit_count < 20)&&(_found_fail==0));
          _bit_count =_bit_count +1) begin
        if ((_msk_obus[_bit_count] === 1'b1) &&
            (_exp_obus[_bit_count] !== _sim_obus[_bit_count])) begin
           _found_fail = 1;
           _found_fail_per_cycle = 1;
           _found_fail_obus[_bit_count] = 1'b1;
        end
     end
  end
  if (_found_fail == 1) begin
     for(_bit_count = 0;
         ((_bit_count < 20)&&((_miscompare_limit==0)||(_compare_fail<=_miscompare_limit)));
          _bit_count =_bit_count +1) begin
      if ((_msk_obus[_bit_count] === 1'b1) &&
          (_exp_obus[_bit_count] !== _sim_obus[_bit_count])) begin
        _compare_fail_count = _compare_fail_count + 1;
        _found_fail_obus[_bit_count] = 1'b1;
        $write($realtime, "ps: Mismatch at pin %d name %s, Simulated %b, Expected %b\n",_bit_count,_nam_obus[_bit_count],_sim_obus[_bit_count],_exp_obus[_bit_count]);
        if (_write_DIAG_file == 1) begin
          if (_DIAG_file_header == 0) begin
            if ((_start_pat > -1) && (_end_pat > -1)) begin
              $sformat(_tmp_filename, "SSN.v_%0d_%0d.fail",
                       _start_pat, _end_pat);
            end
            else if (_start_pat > -1) begin
              $sformat(_tmp_filename, "SSN.v_%0d.fail",
                       _start_pat);
            end
            else if (_end_pat > -1) begin
              $sformat(_tmp_filename, "SSN.v__%0d.fail",
                       _end_pat);
            end
            else begin
              $sformat(_tmp_filename, "SSN.v.fail");
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
              $fwrite(_diag_file, "// This File is simulation generated (%0s/SSN.v)\n", _new_out_path);
            end
            else begin
              $fwrite(_diag_file, "// This File is simulation generated (SSN.v)\n");
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
              $sformat(_tmp_filename, "SSN.v_%0d_%0d.mask",
                       _start_pat, _end_pat);
            end
            else if (_start_pat > -1) begin
              $sformat(_tmp_filename, "SSN.v_%0d.mask",
                       _start_pat);
            end
            else if (_end_pat > -1) begin
              $sformat(_tmp_filename, "SSN.v__%0d.mask",
                       _end_pat);
            end
            else begin
              $sformat(_tmp_filename, "SSN.v.mask");
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

reg[79:0]     mem [0:1677720];
firebird7_in DUT_inst (.fdfx_powergood(fdfx_powergood), 
     .ijtag_tck(ijtag_tck), .ijtag_reset(ijtag_reset), 
     .ijtag_ce(ijtag_ce), .ijtag_se(ijtag_se), 
     .ijtag_ue(ijtag_ue), .ijtag_sel(ijtag_sel), 
     .PD_TOP_bisr_shift_en(PD_TOP_bisr_shift_en), 
     .PD_TOP_bisr_clk(PD_TOP_bisr_clk), 
     .PD_TOP_bisr_reset(PD_TOP_bisr_reset), 
     .ssn_bus_clock(ssn_bus_clock), 
     .ssn_bus_in({\ssn_bus_in[19]  
     , \ssn_bus_in[18] , \ssn_bus_in[17] 
     , \ssn_bus_in[16] , \ssn_bus_in[15] 
     , \ssn_bus_in[14] , \ssn_bus_in[13] 
     , \ssn_bus_in[12] , \ssn_bus_in[11] 
     , \ssn_bus_in[10] , \ssn_bus_in[9] 
     , \ssn_bus_in[8] , \ssn_bus_in[7] 
     , \ssn_bus_in[6] , \ssn_bus_in[5] 
     , \ssn_bus_in[4] , \ssn_bus_in[3] 
     , \ssn_bus_in[2] , \ssn_bus_in[1] 
     , \ssn_bus_in[0] }), .ssn_bus_out({\ssn_bus_out[19] 
     , \ssn_bus_out[18] , \ssn_bus_out[17] 
     , \ssn_bus_out[16] , \ssn_bus_out[15] 
     , \ssn_bus_out[14] , \ssn_bus_out[13] 
     , \ssn_bus_out[12] , \ssn_bus_out[11] 
     , \ssn_bus_out[10] , \ssn_bus_out[9] 
     , \ssn_bus_out[8] , \ssn_bus_out[7] 
     , \ssn_bus_out[6] , \ssn_bus_out[5] 
     , \ssn_bus_out[4] , \ssn_bus_out[3] 
     , \ssn_bus_out[2] , \ssn_bus_out[1] 
     , \ssn_bus_out[0] }));

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
//  $display("Reading checkpoint SSN.v.dat");
//  $restart("SSN.v.dat");
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

// Timing variables and equations
 _time_incr = 0.0;
 _last_time = 0.0;
 ts_min_time_unit =  1;
 ts_gen_tp1_period =  ts_min_time_unit * 2500.000;
 ts_gen_tp1_force_pi =  0;
 ts_gen_tp1_measure_po =  ts_gen_tp1_period * 0.960;
 ts_gen_tp1_pulse_clock_offset =  ts_gen_tp1_period * 0.250;
 ts_gen_tp1_pulse_clock_width =  ts_gen_tp1_period * 0.500;
 ts_gen_tp1_PD_TOP_bisr_clk_force =  0;
 ts_gen_tp1_ijtag_tck_force =  0;
 ts_gen_tp1_ssn_other_edge_input_bus_ports_force =  0;
 ts_gen_tp1_ssn_output_bus_ports_measure =  0;
 ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset =  ts_min_time_unit * 1.000;
 ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_width =  ts_gen_tp1_period * 0.500;
 ts_gen_tp1_ijtag_ctrl_period =  ts_min_time_unit * 2500.000;
 ts_gen_tp1_ijtag_ctrl_force_pi =  0;
 ts_gen_tp1_ijtag_ctrl_measure_po =  ts_gen_tp1_ijtag_ctrl_period * 0.960;
 ts_gen_tp1_ijtag_ctrl_pulse_clock_offset =  ts_gen_tp1_ijtag_ctrl_period * 0.250;
 ts_gen_tp1_ijtag_ctrl_pulse_clock_width =  ts_gen_tp1_ijtag_ctrl_period * 0.500;
 ts_gen_tp1_ijtag_ctrl_PD_TOP_bisr_clk_force =  0;
 ts_gen_tp1_ijtag_ctrl_ijtag_tck_force =  0;
 ts_gen_tp1_ijtag_ctrl_ssn_other_edge_input_bus_ports_force =  0;
 ts_gen_tp1_ijtag_ctrl_ssn_output_bus_ports_measure =  0;
 ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset =  ts_min_time_unit * 1.000;
 ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_width =  ts_gen_tp1_ijtag_ctrl_period * 0.500;
 ts_gen_tp1_ijtag_ctrl_PD_TOP_bisr_shift_en_force =  ts_gen_tp1_ijtag_ctrl_period * 0.990;
 ts_gen_tp1_ijtag_ctrl_ijtag_ce_force =  ts_gen_tp1_ijtag_ctrl_period * 0.990;
 ts_gen_tp1_ijtag_ctrl_ijtag_se_force =  ts_gen_tp1_ijtag_ctrl_period * 0.990;
 ts_gen_tp1_ijtag_ctrl_ijtag_sel_force =  ts_gen_tp1_ijtag_ctrl_period * 0.990;
 ts_gen_tp1_ijtag_ctrl_ijtag_ue_force =  ts_gen_tp1_ijtag_ctrl_period * 0.990;
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
  _cfg_file_name = "SSN.v.cfg";
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
  $sformat(_new_filename,"%0s/SSN.v.cfg",_new_path); 
  _config_file = $fopen(_new_filename, "r");
end
else begin
  _config_file = $fopen("SSN.v.cfg", "r");
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
   _found_fail_obus =20'b00000000000000000000;
   for (_index=0; _index <= _max_index; _index = _index+1)
   begin
      vect = mem[_index];
      _exp_obus=20'bXXXXXXXXXXXXXXXXXXXX;
      _msk_obus=20'b00000000000000000000;
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
            _found_fail_obus =20'b00000000000000000000;
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

                  _last_time = 0.0 ; 
                  _ibus[20] = 1'b0;
                  _ibus[30:21] = vect[79:70];
                  _ibus[19:0] = vect[68:49];
                  _exp_obus[19:0] = vect[48:29];
                  _msk_obus[19:0] = vect[28:9];
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

                  _time_incr = ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset - _last_time; 
                  # _time_incr; // ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset ps
                  _last_time = ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset ; 
                  _ibus[20] = vect[69];

                  _time_incr = ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_width - _last_time; 
                  # _time_incr; // ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_width ps
                  _last_time = ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ssn_bus_1x_clocks_pulse_clock_width ; 
                  _ibus[20] = 1'b0;

                  _time_incr = ts_gen_tp1_period - _last_time; 
                  # _time_incr; // ts_gen_tp1_period ps
                  _last_time = ts_gen_tp1_period ; 
               end // timeplate 1 - gen_tp1
               1'b0: begin // timeplate 2 - gen_tp1_ijtag_ctrl

                  _last_time = 0.0 ; 
                  _ibus[20] = 1'b0;
                  _ibus[30:28] = vect[79:77];
                  _ibus[22:21] = vect[71:70];
                  _ibus[19:0] = vect[68:49];
                  _exp_obus[19:0] = vect[48:29];
                  _msk_obus[19:0] = vect[28:9];
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

                  _time_incr = ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset - _last_time; 
                  # _time_incr; // ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset ps
                  _last_time = ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset ; 
                  _ibus[20] = vect[69];

                  _time_incr = ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_width - _last_time; 
                  # _time_incr; // ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_width ps
                  _last_time = ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_offset + ts_gen_tp1_ijtag_ctrl_ssn_bus_1x_clocks_pulse_clock_width ; 
                  _ibus[20] = 1'b0;

                  _time_incr = ts_gen_tp1_ijtag_ctrl_ijtag_ce_force - _last_time; 
                  # _time_incr; // ts_gen_tp1_ijtag_ctrl_ijtag_ce_force ps
                  _last_time = ts_gen_tp1_ijtag_ctrl_ijtag_ce_force ; 
                  _ibus[27:23] = vect[76:72];

                  _time_incr = ts_gen_tp1_ijtag_ctrl_period - _last_time; 
                  # _time_incr; // ts_gen_tp1_ijtag_ctrl_period ps
                  _last_time = ts_gen_tp1_ijtag_ctrl_period ; 
               end // timeplate 2 - gen_tp1_ijtag_ctrl
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
                  $display($realtime, "ps: Pattern_set default");
               end
               21: begin
                  $display($realtime, "ps:  SSNContinuityVerify(default)");
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
         3'b100:  begin // start repeat vector
            _repeat_depth = _repeat_depth + 1;
            _repeat_count_nest[_repeat_depth] = vect[38:7];
            _repeat_count = _repeat_count_nest[_repeat_depth];
            _save_index[_repeat_depth] = _index;
         end
         3'b101:  begin // end repeat vector
            if (_repeat_count_nest[_repeat_depth] > 0)
              _repeat_count_nest[_repeat_depth] = _repeat_count_nest[_repeat_depth] - 1;
            if (_repeat_count_nest[_repeat_depth] > 0) begin
              _index = _save_index[_repeat_depth];
            end
            if (_repeat_count_nest[_repeat_depth] == 0)
              _repeat_depth = _repeat_depth - 1;
            _repeat_count = _repeat_count_nest[_repeat_depth];
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
//  $display("Writing checkpoint SSN.v.dat");
//  $save("SSN.v.dat");
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
