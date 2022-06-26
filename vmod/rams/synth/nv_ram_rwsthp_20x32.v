// nv_ram_rwsthp_20x32: synthesizable model wrapper
// Generated by /home/nvtools/branch/release/t194_rg/2017/06/01_10_25_11/nvtools/rams/scripts/ramgen - DO NOT EDIT
// Estimated area: 606.53 um^2 (nvstd_tsmc16fflr)
// Option explanations:
// p:
// Causes read ports to have their outputs flopped.
// The 'ore' input is used as a load enable on the output flop
// stage. This flop stage tends to be nearly free, since some
// flops are generally required for testability purposes.
// s:
// Indicates that the ram is synchronous (i.e. all
// ports use the same clock). The one or more clk(_[rw])[0-9]*
// ports will be replaced with a single 'clk' port.
// h:
// Functional bypass option creates a bypass_di port and a control port.
// When the control is asserted, bypass_di is floped into the data register instead
// of RAM core output.
// t:
// Indicates that write-through capability is necessary.
// This allows a read of an entry that is currently being
// written to result in correct (new) data. This option is
// only allowed for synchronous rams, and usually results in a
// bypass path being built around the main storage.
// leda ELB072 off
`timescale 1ns / 10ps
module nv_ram_rwsthp_20x32 (
        clk,
        ra,
        re,
        ore,
        dout,
        wa,
        we,
        di,
        byp_sel,
        dbyp,
        pwrbus_ram_pd
        );
parameter FORCE_CONTENTION_ASSERTION_RESET_ACTIVE=1'b0;
// port list
input clk;
input [4:0] ra;
input re;
input ore;
output [31:0] dout;
input [4:0] wa;
input we;
input [31:0] di;
input byp_sel;
input [31:0] dbyp;
input [31:0] pwrbus_ram_pd;
// This wrapper consists of : 1 Ram cells: RAMDP_20X32_GL_M1_E2 ;
//Wires for Misc Ports
wire DFT_clamp;
//Wires for Mbist Ports
wire [4:0] mbist_Wa_w0;
wire [1:0] mbist_Di_w0;
wire mbist_we_w0;
wire [4:0] mbist_Ra_r0;
// verilint 528 off - Variable set but not used
wire [31:0] mbist_Do_r0_int_net;
// verilint 528 on - Variable set but not used
wire mbist_ce_r0;
wire mbist_en_sync;
//Wires for RamAccess Ports
wire SI;
// verilint 528 off - Variable set but not used
wire SO_int_net;
// verilint 528 on - Variable set but not used
wire shiftDR;
wire updateDR;
wire debug_mode;
//Wires for Misc Ports
wire mbist_ramaccess_rst_;
wire ary_atpg_ctl;
wire write_inh;
wire scan_ramtms;
wire iddq_mode;
wire jtag_readonly_mode;
wire ary_read_inh;
wire test_mode;
wire scan_en;
wire [1:0] svop;
// Use Bbox and clamps to clamp and tie off the DFT signals in the wrapper
NV_BLKBOX_SRC0 UI_enableDFTmode_async_ld_buf (.Y(DFT_clamp));
wire pre_mbist_Wa_w0_0;
NV_BLKBOX_SRC0_X testInst_mbist_Wa_w0_0 (.Y(pre_mbist_Wa_w0_0));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Wa_w0_0 (.Z(mbist_Wa_w0[0]), .A1(pre_mbist_Wa_w0_0), .A2(DFT_clamp) );
wire pre_mbist_Wa_w0_1;
NV_BLKBOX_SRC0_X testInst_mbist_Wa_w0_1 (.Y(pre_mbist_Wa_w0_1));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Wa_w0_1 (.Z(mbist_Wa_w0[1]), .A1(pre_mbist_Wa_w0_1), .A2(DFT_clamp) );
wire pre_mbist_Wa_w0_2;
NV_BLKBOX_SRC0_X testInst_mbist_Wa_w0_2 (.Y(pre_mbist_Wa_w0_2));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Wa_w0_2 (.Z(mbist_Wa_w0[2]), .A1(pre_mbist_Wa_w0_2), .A2(DFT_clamp) );
wire pre_mbist_Wa_w0_3;
NV_BLKBOX_SRC0_X testInst_mbist_Wa_w0_3 (.Y(pre_mbist_Wa_w0_3));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Wa_w0_3 (.Z(mbist_Wa_w0[3]), .A1(pre_mbist_Wa_w0_3), .A2(DFT_clamp) );
wire pre_mbist_Wa_w0_4;
NV_BLKBOX_SRC0_X testInst_mbist_Wa_w0_4 (.Y(pre_mbist_Wa_w0_4));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Wa_w0_4 (.Z(mbist_Wa_w0[4]), .A1(pre_mbist_Wa_w0_4), .A2(DFT_clamp) );
wire pre_mbist_Di_w0_0;
NV_BLKBOX_SRC0_X testInst_mbist_Di_w0_0 (.Y(pre_mbist_Di_w0_0));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Di_w0_0 (.Z(mbist_Di_w0[0]), .A1(pre_mbist_Di_w0_0), .A2(DFT_clamp) );
wire pre_mbist_Di_w0_1;
NV_BLKBOX_SRC0_X testInst_mbist_Di_w0_1 (.Y(pre_mbist_Di_w0_1));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Di_w0_1 (.Z(mbist_Di_w0[1]), .A1(pre_mbist_Di_w0_1), .A2(DFT_clamp) );
wire pre_mbist_we_w0;
NV_BLKBOX_SRC0_X testInst_mbist_we_w0 (.Y(pre_mbist_we_w0));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_we_w0 (.Z(mbist_we_w0), .A1(pre_mbist_we_w0), .A2(DFT_clamp) );
wire pre_mbist_Ra_r0_0;
NV_BLKBOX_SRC0_X testInst_mbist_Ra_r0_0 (.Y(pre_mbist_Ra_r0_0));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Ra_r0_0 (.Z(mbist_Ra_r0[0]), .A1(pre_mbist_Ra_r0_0), .A2(DFT_clamp) );
wire pre_mbist_Ra_r0_1;
NV_BLKBOX_SRC0_X testInst_mbist_Ra_r0_1 (.Y(pre_mbist_Ra_r0_1));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Ra_r0_1 (.Z(mbist_Ra_r0[1]), .A1(pre_mbist_Ra_r0_1), .A2(DFT_clamp) );
wire pre_mbist_Ra_r0_2;
NV_BLKBOX_SRC0_X testInst_mbist_Ra_r0_2 (.Y(pre_mbist_Ra_r0_2));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Ra_r0_2 (.Z(mbist_Ra_r0[2]), .A1(pre_mbist_Ra_r0_2), .A2(DFT_clamp) );
wire pre_mbist_Ra_r0_3;
NV_BLKBOX_SRC0_X testInst_mbist_Ra_r0_3 (.Y(pre_mbist_Ra_r0_3));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Ra_r0_3 (.Z(mbist_Ra_r0[3]), .A1(pre_mbist_Ra_r0_3), .A2(DFT_clamp) );
wire pre_mbist_Ra_r0_4;
NV_BLKBOX_SRC0_X testInst_mbist_Ra_r0_4 (.Y(pre_mbist_Ra_r0_4));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_Ra_r0_4 (.Z(mbist_Ra_r0[4]), .A1(pre_mbist_Ra_r0_4), .A2(DFT_clamp) );
NV_BLKBOX_SINK testInst_mbist_Do_r0_0 (.A(mbist_Do_r0_int_net[0]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_1 (.A(mbist_Do_r0_int_net[1]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_2 (.A(mbist_Do_r0_int_net[2]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_3 (.A(mbist_Do_r0_int_net[3]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_4 (.A(mbist_Do_r0_int_net[4]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_5 (.A(mbist_Do_r0_int_net[5]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_6 (.A(mbist_Do_r0_int_net[6]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_7 (.A(mbist_Do_r0_int_net[7]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_8 (.A(mbist_Do_r0_int_net[8]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_9 (.A(mbist_Do_r0_int_net[9]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_10 (.A(mbist_Do_r0_int_net[10]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_11 (.A(mbist_Do_r0_int_net[11]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_12 (.A(mbist_Do_r0_int_net[12]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_13 (.A(mbist_Do_r0_int_net[13]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_14 (.A(mbist_Do_r0_int_net[14]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_15 (.A(mbist_Do_r0_int_net[15]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_16 (.A(mbist_Do_r0_int_net[16]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_17 (.A(mbist_Do_r0_int_net[17]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_18 (.A(mbist_Do_r0_int_net[18]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_19 (.A(mbist_Do_r0_int_net[19]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_20 (.A(mbist_Do_r0_int_net[20]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_21 (.A(mbist_Do_r0_int_net[21]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_22 (.A(mbist_Do_r0_int_net[22]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_23 (.A(mbist_Do_r0_int_net[23]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_24 (.A(mbist_Do_r0_int_net[24]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_25 (.A(mbist_Do_r0_int_net[25]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_26 (.A(mbist_Do_r0_int_net[26]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_27 (.A(mbist_Do_r0_int_net[27]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_28 (.A(mbist_Do_r0_int_net[28]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_29 (.A(mbist_Do_r0_int_net[29]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_30 (.A(mbist_Do_r0_int_net[30]));
NV_BLKBOX_SINK testInst_mbist_Do_r0_31 (.A(mbist_Do_r0_int_net[31]));
wire pre_mbist_ce_r0;
NV_BLKBOX_SRC0_X testInst_mbist_ce_r0 (.Y(pre_mbist_ce_r0));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_ce_r0 (.Z(mbist_ce_r0), .A1(pre_mbist_ce_r0), .A2(DFT_clamp) );
wire pre_mbist_en_sync;
NV_BLKBOX_SRC0_X testInst_mbist_en_sync (.Y(pre_mbist_en_sync));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_en_sync (.Z(mbist_en_sync), .A1(pre_mbist_en_sync), .A2(DFT_clamp) );
wire pre_SI;
NV_BLKBOX_SRC0_X testInst_SI (.Y(pre_SI));
AN2D4PO4 UJ_DFTQUALIFIER_SI (.Z(SI), .A1(pre_SI), .A2(DFT_clamp) );
NV_BLKBOX_SINK testInst_SO (.A(SO_int_net));
wire pre_shiftDR;
NV_BLKBOX_SRC0_X testInst_shiftDR (.Y(pre_shiftDR));
AN2D4PO4 UJ_DFTQUALIFIER_shiftDR (.Z(shiftDR), .A1(pre_shiftDR), .A2(DFT_clamp) );
wire pre_updateDR;
NV_BLKBOX_SRC0_X testInst_updateDR (.Y(pre_updateDR));
AN2D4PO4 UJ_DFTQUALIFIER_updateDR (.Z(updateDR), .A1(pre_updateDR), .A2(DFT_clamp) );
wire pre_debug_mode;
NV_BLKBOX_SRC0_X testInst_debug_mode (.Y(pre_debug_mode));
AN2D4PO4 UJ_DFTQUALIFIER_debug_mode (.Z(debug_mode), .A1(pre_debug_mode), .A2(DFT_clamp) );
wire pre_mbist_ramaccess_rst_;
NV_BLKBOX_SRC0_X testInst_mbist_ramaccess_rst_ (.Y(pre_mbist_ramaccess_rst_));
AN2D4PO4 UJ_DFTQUALIFIER_mbist_ramaccess_rst_ (.Z(mbist_ramaccess_rst_), .A1(pre_mbist_ramaccess_rst_), .A2(DFT_clamp) );
wire pre_ary_atpg_ctl;
NV_BLKBOX_SRC0_X testInst_ary_atpg_ctl (.Y(pre_ary_atpg_ctl));
AN2D4PO4 UJ_DFTQUALIFIER_ary_atpg_ctl (.Z(ary_atpg_ctl), .A1(pre_ary_atpg_ctl), .A2(DFT_clamp) );
wire pre_write_inh;
NV_BLKBOX_SRC0_X testInst_write_inh (.Y(pre_write_inh));
AN2D4PO4 UJ_DFTQUALIFIER_write_inh (.Z(write_inh), .A1(pre_write_inh), .A2(DFT_clamp) );
wire pre_scan_ramtms;
NV_BLKBOX_SRC0_X testInst_scan_ramtms (.Y(pre_scan_ramtms));
AN2D4PO4 UJ_DFTQUALIFIER_scan_ramtms (.Z(scan_ramtms), .A1(pre_scan_ramtms), .A2(DFT_clamp) );
wire pre_iddq_mode;
NV_BLKBOX_SRC0_X testInst_iddq_mode (.Y(pre_iddq_mode));
AN2D4PO4 UJ_DFTQUALIFIER_iddq_mode (.Z(iddq_mode), .A1(pre_iddq_mode), .A2(DFT_clamp) );
wire pre_jtag_readonly_mode;
NV_BLKBOX_SRC0_X testInst_jtag_readonly_mode (.Y(pre_jtag_readonly_mode));
AN2D4PO4 UJ_DFTQUALIFIER_jtag_readonly_mode (.Z(jtag_readonly_mode), .A1(pre_jtag_readonly_mode), .A2(DFT_clamp) );
wire pre_ary_read_inh;
NV_BLKBOX_SRC0_X testInst_ary_read_inh (.Y(pre_ary_read_inh));
AN2D4PO4 UJ_DFTQUALIFIER_ary_read_inh (.Z(ary_read_inh), .A1(pre_ary_read_inh), .A2(DFT_clamp) );
wire pre_test_mode;
NV_BLKBOX_SRC0_X testInst_test_mode (.Y(pre_test_mode));
AN2D4PO4 UJ_DFTQUALIFIER_test_mode (.Z(test_mode), .A1(pre_test_mode), .A2(DFT_clamp) );
wire pre_scan_en;
NV_BLKBOX_SRC0_X testInst_scan_en (.Y(pre_scan_en));
AN2D4PO4 UJ_DFTQUALIFIER_scan_en (.Z(scan_en), .A1(pre_scan_en), .A2(DFT_clamp) );
NV_BLKBOX_SRC0 testInst_svop_0 (.Y(svop[0]));
NV_BLKBOX_SRC0 testInst_svop_1 (.Y(svop[1]));
// Declare the wires for test signals
// Instantiating the internal logic module now
// verilint 402 off - inferred Reset must be a module port
nv_ram_rwsthp_20x32_logic #(FORCE_CONTENTION_ASSERTION_RESET_ACTIVE) r_nv_ram_rwsthp_20x32 (
                           .SI(SI), .SO_int_net(SO_int_net),
                           .ary_atpg_ctl(ary_atpg_ctl),
                           .ary_read_inh(ary_read_inh), .byp_sel(byp_sel),
                           .clk(clk), .dbyp(dbyp), .debug_mode(debug_mode),
                           .di(di), .dout(dout), .iddq_mode(iddq_mode),
                           .jtag_readonly_mode(jtag_readonly_mode),
                           .mbist_Di_w0(mbist_Di_w0),
                           .mbist_Do_r0_int_net(mbist_Do_r0_int_net),
                           .mbist_Ra_r0(mbist_Ra_r0), .mbist_Wa_w0(mbist_Wa_w0),
                           .mbist_ce_r0(mbist_ce_r0),
                           .mbist_en_sync(mbist_en_sync),
                           .mbist_ramaccess_rst_(mbist_ramaccess_rst_),
                           .mbist_we_w0(mbist_we_w0), .ore(ore),
                           .pwrbus_ram_pd(pwrbus_ram_pd), .ra(ra), .re(re),
                           .scan_en(scan_en), .scan_ramtms(scan_ramtms),
                           .shiftDR(shiftDR), .svop(svop), .test_mode(test_mode),
                           .updateDR(updateDR), .wa(wa), .we(we),
                           .write_inh(write_inh) );
// verilint 402 on - inferred Reset must be a module port
// synopsys dc_tcl_script_begin
// set_dont_touch [get_cells "testInst_SI"]
// set_dont_touch [get_cells "testInst_SO"]
// set_dont_touch [get_cells "testInst_ary_atpg_ctl"]
// set_dont_touch [get_cells "testInst_ary_read_inh"]
// set_dont_touch [get_cells "testInst_debug_mode"]
// set_dont_touch [get_cells "testInst_iddq_mode"]
// set_dont_touch [get_cells "testInst_jtag_readonly_mode"]
// set_dont_touch [get_cells "testInst_mbist_Di_w0_0"]
// set_dont_touch [get_cells "testInst_mbist_Di_w0_1"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_0"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_1"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_10"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_11"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_12"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_13"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_14"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_15"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_16"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_17"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_18"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_19"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_2"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_20"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_21"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_22"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_23"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_24"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_25"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_26"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_27"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_28"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_29"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_3"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_30"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_31"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_4"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_5"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_6"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_7"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_8"]
// set_dont_touch [get_cells "testInst_mbist_Do_r0_9"]
// set_dont_touch [get_cells "testInst_mbist_Ra_r0_0"]
// set_dont_touch [get_cells "testInst_mbist_Ra_r0_1"]
// set_dont_touch [get_cells "testInst_mbist_Ra_r0_2"]
// set_dont_touch [get_cells "testInst_mbist_Ra_r0_3"]
// set_dont_touch [get_cells "testInst_mbist_Ra_r0_4"]
// set_dont_touch [get_cells "testInst_mbist_Wa_w0_0"]
// set_dont_touch [get_cells "testInst_mbist_Wa_w0_1"]
// set_dont_touch [get_cells "testInst_mbist_Wa_w0_2"]
// set_dont_touch [get_cells "testInst_mbist_Wa_w0_3"]
// set_dont_touch [get_cells "testInst_mbist_Wa_w0_4"]
// set_dont_touch [get_cells "testInst_mbist_ce_r0"]
// set_dont_touch [get_cells "testInst_mbist_en_sync"]
// set_dont_touch [get_cells "testInst_mbist_ramaccess_rst_"]
// set_dont_touch [get_cells "testInst_mbist_we_w0"]
// set_dont_touch [get_cells "testInst_scan_en"]
// set_dont_touch [get_cells "testInst_scan_ramtms"]
// set_dont_touch [get_cells "testInst_shiftDR"]
// set_dont_touch [get_cells "testInst_svop_0"]
// set_dont_touch [get_cells "testInst_svop_1"]
// set_dont_touch [get_cells "testInst_test_mode"]
// set_dont_touch [get_cells "testInst_updateDR"]
// set_dont_touch [get_cells "testInst_write_inh"]
// synopsys dc_tcl_script_end
// synopsys dc_tcl_script_begin
// set_dont_touch [get_nets "SI"]
// set_dont_touch [get_nets "SO_int_net"]
// set_dont_touch [get_nets "ary_atpg_ctl"]
// set_dont_touch [get_nets "ary_read_inh"]
// set_dont_touch [get_nets "debug_mode"]
// set_dont_touch [get_nets "iddq_mode"]
// set_dont_touch [get_nets "jtag_readonly_mode"]
// set_dont_touch [get_nets "mbist_Di_w0"]
// set_dont_touch [get_nets "mbist_Do_r0_int_net"]
// set_dont_touch [get_nets "mbist_Ra_r0"]
// set_dont_touch [get_nets "mbist_Wa_w0"]
// set_dont_touch [get_nets "mbist_ce_r0"]
// set_dont_touch [get_nets "mbist_en_sync"]
// set_dont_touch [get_nets "mbist_ramaccess_rst_"]
// set_dont_touch [get_nets "mbist_we_w0"]
// set_dont_touch [get_nets "scan_en"]
// set_dont_touch [get_nets "scan_ramtms"]
// set_dont_touch [get_nets "shiftDR"]
// set_dont_touch [get_nets "svop"]
// set_dont_touch [get_nets "test_mode"]
// set_dont_touch [get_nets "updateDR"]
// set_dont_touch [get_nets "write_inh"]
// synopsys dc_tcl_script_end
`ifndef SYNTHESIS
task arrangement (output integer arrangment_string[31:0]);
  begin
    arrangment_string[0] = 0 ;
    arrangment_string[1] = 1 ;
    arrangment_string[2] = 2 ;
    arrangment_string[3] = 3 ;
    arrangment_string[4] = 4 ;
    arrangment_string[5] = 5 ;
    arrangment_string[6] = 6 ;
    arrangment_string[7] = 7 ;
    arrangment_string[8] = 8 ;
    arrangment_string[9] = 9 ;
    arrangment_string[10] = 10 ;
    arrangment_string[11] = 11 ;
    arrangment_string[12] = 12 ;
    arrangment_string[13] = 13 ;
    arrangment_string[14] = 14 ;
    arrangment_string[15] = 15 ;
    arrangment_string[16] = 16 ;
    arrangment_string[17] = 17 ;
    arrangment_string[18] = 18 ;
    arrangment_string[19] = 19 ;
    arrangment_string[20] = 20 ;
    arrangment_string[21] = 21 ;
    arrangment_string[22] = 22 ;
    arrangment_string[23] = 23 ;
    arrangment_string[24] = 24 ;
    arrangment_string[25] = 25 ;
    arrangment_string[26] = 26 ;
    arrangment_string[27] = 27 ;
    arrangment_string[28] = 28 ;
    arrangment_string[29] = 29 ;
    arrangment_string[30] = 30 ;
    arrangment_string[31] = 31 ;
  end
endtask
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_VAL_TASKS
`ifndef MEM_REG_NAME
 `define MEM_REG_NAME MX.mem
`endif
// Bit vector indicating which shadow addresses have been written
reg [19:0] shadow_written = 'b0;
// Shadow ram array used to store initialization values
reg [31:0] shadow_mem [19:0];
`ifdef NV_RAM_EXPAND_ARRAY
wire [31:0] shadow_mem_row0 = shadow_mem[0];
wire [31:0] shadow_mem_row1 = shadow_mem[1];
wire [31:0] shadow_mem_row2 = shadow_mem[2];
wire [31:0] shadow_mem_row3 = shadow_mem[3];
wire [31:0] shadow_mem_row4 = shadow_mem[4];
wire [31:0] shadow_mem_row5 = shadow_mem[5];
wire [31:0] shadow_mem_row6 = shadow_mem[6];
wire [31:0] shadow_mem_row7 = shadow_mem[7];
wire [31:0] shadow_mem_row8 = shadow_mem[8];
wire [31:0] shadow_mem_row9 = shadow_mem[9];
wire [31:0] shadow_mem_row10 = shadow_mem[10];
wire [31:0] shadow_mem_row11 = shadow_mem[11];
wire [31:0] shadow_mem_row12 = shadow_mem[12];
wire [31:0] shadow_mem_row13 = shadow_mem[13];
wire [31:0] shadow_mem_row14 = shadow_mem[14];
wire [31:0] shadow_mem_row15 = shadow_mem[15];
wire [31:0] shadow_mem_row16 = shadow_mem[16];
wire [31:0] shadow_mem_row17 = shadow_mem[17];
wire [31:0] shadow_mem_row18 = shadow_mem[18];
wire [31:0] shadow_mem_row19 = shadow_mem[19];
`endif
task init_mem_val;
  input [4:0] row;
  input [31:0] data;
  begin
    shadow_mem[row] = data;
    shadow_written[row] = 1'b1;
  end
endtask
task init_mem_commit;
integer row;
begin
// initializing RAMDP_20X32_GL_M1_E2
for (row = 0; row < 20; row = row + 1)
 if (shadow_written[row]) r_nv_ram_rwsthp_20x32.ram_Inst_20X32.mem_write(row - 0, shadow_mem[row][31:0]);
shadow_written = 'b0;
end
endtask
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_VAL_TASKS
task do_write; //(wa, we, di);
   input [4:0] wa;
   input we;
   input [31:0] di;
   reg [31:0] d;
   begin
      d = probe_mem_val(wa);
      d = (we ? di : d);
      init_mem_val(wa,d);
   end
endtask
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_VAL_TASKS
`ifndef MEM_REG_NAME
 `define MEM_REG_NAME MX.mem
`endif
function [31:0] probe_mem_val;
input [4:0] row;
reg [31:0] data;
begin
// probing RAMDP_20X32_GL_M1_E2
 if (row >= 0 && row < 20) data[31:0] = r_nv_ram_rwsthp_20x32.ram_Inst_20X32.mem_read(row - 0);
    probe_mem_val = data;
end
endfunction
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_CLEAR_MEM_TASK
`ifndef NO_INIT_MEM_VAL_TASKS
reg disable_clear_mem = 0;
task clear_mem;
integer i;
begin
  if (!disable_clear_mem)
  begin
    for (i = 0; i < 20; i = i + 1)
      begin
        init_mem_val(i, 'bx);
      end
    init_mem_commit();
  end
end
endtask
`endif
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_ZERO_TASK
`ifndef NO_INIT_MEM_VAL_TASKS
task init_mem_zero;
integer i;
begin
 for (i = 0; i < 20; i = i + 1)
   begin
     init_mem_val(i, 'b0);
   end
 init_mem_commit();
end
endtask
`endif
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_VAL_TASKS
`ifndef NO_INIT_MEM_FROM_FILE_TASK
task init_mem_from_file;
input string init_file;
integer i;
begin
 $readmemh(init_file,shadow_mem);
 for (i = 0; i < 20; i = i + 1)
   begin
     shadow_written[i] = 1'b1;
   end
 init_mem_commit();
end
endtask
`endif
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_INIT_MEM_RANDOM_TASK
`ifndef NO_INIT_MEM_VAL_TASKS
RANDFUNC rf0 ();
task init_mem_random;
reg [31:0] random_num;
integer i;
begin
 for (i = 0; i < 20; i = i + 1)
   begin
     random_num = {rf0.rollpli(0,32'hffffffff)};
     init_mem_val(i, random_num);
   end
 init_mem_commit();
end
endtask
`endif
`endif
`endif
`ifndef SYNTHESIS
`ifndef NO_FLIP_TASKS
`ifndef NO_INIT_MEM_VAL_TASKS
RANDFUNC rflip ();
task random_flip;
integer random_num;
integer row;
integer bitnum;
begin
  random_num = rflip.rollpli(0, 640);
  row = random_num / 32;
  bitnum = random_num % 32;
  target_flip(row, bitnum);
end
endtask
task target_flip;
input [4:0] row;
input [31:0] bitnum;
reg [31:0] data;
begin
  if(!$test$plusargs("no_display_target_flips"))
    $display("%m: flipping row %d bit %d at time %t", row, bitnum, $time);
  data = probe_mem_val(row);
  data[bitnum] = ~data[bitnum];
  init_mem_val(row, data);
  init_mem_commit();
end
endtask
`endif
`endif
`endif
// The main module is done
endmodule
//********************************************************************************
