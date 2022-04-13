// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Mar 30 12:16:09 2022
// Host        : Waqfenau313c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/hdmi_demo_2016/attempt3/Nexys-Video-HDMI-2016.4-2/Nexys-Video-HDMI/src/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_sim_netlist.v
// Design      : hdmi_motion_detection_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hdmi_motion_detection_0_0,motion_detection_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "motion_detection_v1_0,Vivado 2016.4" *) 
(* NotValidForBitStream *)
module hdmi_motion_detection_0_0
   (s00_axis_tuser,
    counter_w,
    line_counter_w,
    frame_counter_w,
    frame_wait_w,
    l_e_d,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn);
  input s00_axis_tuser;
  output [31:0]counter_w;
  output [15:0]line_counter_w;
  output [15:0]frame_counter_w;
  output [31:0]frame_wait_w;
  output l_e_d;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) input s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST, xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *) input s00_axis_aresetn;

  wire [31:0]counter_w;
  wire [15:0]frame_counter_w;
  wire [31:0]frame_wait_w;
  wire l_e_d;
  wire [15:0]line_counter_w;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;

  hdmi_motion_detection_0_0_motion_detection_v1_0 inst
       (.counter_w(counter_w),
        .frame_counter_w(frame_counter_w),
        .frame_wait_w(frame_wait_w),
        .l_e_d(l_e_d),
        .line_counter_w(line_counter_w),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tuser(s00_axis_tuser),
        .s00_axis_tvalid(s00_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "motion_detection_v1_0" *) 
module hdmi_motion_detection_0_0_motion_detection_v1_0
   (counter_w,
    line_counter_w,
    frame_counter_w,
    frame_wait_w,
    l_e_d,
    s00_axis_tuser,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_tlast);
  output [31:0]counter_w;
  output [15:0]line_counter_w;
  output [15:0]frame_counter_w;
  output [31:0]frame_wait_w;
  output l_e_d;
  input s00_axis_tuser;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_tlast;

  wire clear;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[11]_i_5_n_0 ;
  wire \counter[15]_i_2_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[15]_i_5_n_0 ;
  wire \counter[19]_i_2_n_0 ;
  wire \counter[19]_i_3_n_0 ;
  wire \counter[19]_i_4_n_0 ;
  wire \counter[19]_i_5_n_0 ;
  wire \counter[23]_i_2_n_0 ;
  wire \counter[23]_i_3_n_0 ;
  wire \counter[23]_i_4_n_0 ;
  wire \counter[23]_i_5_n_0 ;
  wire \counter[27]_i_2_n_0 ;
  wire \counter[27]_i_3_n_0 ;
  wire \counter[27]_i_4_n_0 ;
  wire \counter[27]_i_5_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire \counter_reg[11]_i_1_n_0 ;
  wire \counter_reg[11]_i_1_n_1 ;
  wire \counter_reg[11]_i_1_n_2 ;
  wire \counter_reg[11]_i_1_n_3 ;
  wire \counter_reg[11]_i_1_n_4 ;
  wire \counter_reg[11]_i_1_n_5 ;
  wire \counter_reg[11]_i_1_n_6 ;
  wire \counter_reg[11]_i_1_n_7 ;
  wire \counter_reg[15]_i_1_n_0 ;
  wire \counter_reg[15]_i_1_n_1 ;
  wire \counter_reg[15]_i_1_n_2 ;
  wire \counter_reg[15]_i_1_n_3 ;
  wire \counter_reg[15]_i_1_n_4 ;
  wire \counter_reg[15]_i_1_n_5 ;
  wire \counter_reg[15]_i_1_n_6 ;
  wire \counter_reg[15]_i_1_n_7 ;
  wire \counter_reg[19]_i_1_n_0 ;
  wire \counter_reg[19]_i_1_n_1 ;
  wire \counter_reg[19]_i_1_n_2 ;
  wire \counter_reg[19]_i_1_n_3 ;
  wire \counter_reg[19]_i_1_n_4 ;
  wire \counter_reg[19]_i_1_n_5 ;
  wire \counter_reg[19]_i_1_n_6 ;
  wire \counter_reg[19]_i_1_n_7 ;
  wire \counter_reg[23]_i_1_n_0 ;
  wire \counter_reg[23]_i_1_n_1 ;
  wire \counter_reg[23]_i_1_n_2 ;
  wire \counter_reg[23]_i_1_n_3 ;
  wire \counter_reg[23]_i_1_n_4 ;
  wire \counter_reg[23]_i_1_n_5 ;
  wire \counter_reg[23]_i_1_n_6 ;
  wire \counter_reg[23]_i_1_n_7 ;
  wire \counter_reg[27]_i_1_n_0 ;
  wire \counter_reg[27]_i_1_n_1 ;
  wire \counter_reg[27]_i_1_n_2 ;
  wire \counter_reg[27]_i_1_n_3 ;
  wire \counter_reg[27]_i_1_n_4 ;
  wire \counter_reg[27]_i_1_n_5 ;
  wire \counter_reg[27]_i_1_n_6 ;
  wire \counter_reg[27]_i_1_n_7 ;
  wire \counter_reg[31]_i_2_n_1 ;
  wire \counter_reg[31]_i_2_n_2 ;
  wire \counter_reg[31]_i_2_n_3 ;
  wire \counter_reg[31]_i_2_n_4 ;
  wire \counter_reg[31]_i_2_n_5 ;
  wire \counter_reg[31]_i_2_n_6 ;
  wire \counter_reg[31]_i_2_n_7 ;
  wire \counter_reg[3]_i_1_n_0 ;
  wire \counter_reg[3]_i_1_n_1 ;
  wire \counter_reg[3]_i_1_n_2 ;
  wire \counter_reg[3]_i_1_n_3 ;
  wire \counter_reg[3]_i_1_n_4 ;
  wire \counter_reg[3]_i_1_n_5 ;
  wire \counter_reg[3]_i_1_n_6 ;
  wire \counter_reg[3]_i_1_n_7 ;
  wire \counter_reg[7]_i_1_n_0 ;
  wire \counter_reg[7]_i_1_n_1 ;
  wire \counter_reg[7]_i_1_n_2 ;
  wire \counter_reg[7]_i_1_n_3 ;
  wire \counter_reg[7]_i_1_n_4 ;
  wire \counter_reg[7]_i_1_n_5 ;
  wire \counter_reg[7]_i_1_n_6 ;
  wire \counter_reg[7]_i_1_n_7 ;
  wire [31:0]counter_w;
  wire [18:1]data0;
  wire [18:1]frame0_raddr0;
  wire \frame0_raddr[0]_i_10_n_0 ;
  wire \frame0_raddr[0]_i_11_n_0 ;
  wire \frame0_raddr[0]_i_12_n_0 ;
  wire \frame0_raddr[0]_i_13_n_0 ;
  wire \frame0_raddr[0]_i_14_n_0 ;
  wire \frame0_raddr[0]_i_15_n_0 ;
  wire \frame0_raddr[0]_i_17_n_0 ;
  wire \frame0_raddr[0]_i_18_n_0 ;
  wire \frame0_raddr[0]_i_19_n_0 ;
  wire \frame0_raddr[0]_i_1_n_0 ;
  wire \frame0_raddr[0]_i_20_n_0 ;
  wire \frame0_raddr[0]_i_21_n_0 ;
  wire \frame0_raddr[0]_i_22_n_0 ;
  wire \frame0_raddr[0]_i_23_n_0 ;
  wire \frame0_raddr[0]_i_24_n_0 ;
  wire \frame0_raddr[0]_i_25_n_0 ;
  wire \frame0_raddr[0]_i_26_n_0 ;
  wire \frame0_raddr[0]_i_27_n_0 ;
  wire \frame0_raddr[0]_i_28_n_0 ;
  wire \frame0_raddr[0]_i_3_n_0 ;
  wire \frame0_raddr[0]_i_4_n_0 ;
  wire \frame0_raddr[0]_i_5_n_0 ;
  wire \frame0_raddr[0]_i_7_n_0 ;
  wire \frame0_raddr[0]_i_8_n_0 ;
  wire \frame0_raddr[0]_i_9_n_0 ;
  wire \frame0_raddr[12]_i_10_n_0 ;
  wire \frame0_raddr[12]_i_2_n_0 ;
  wire \frame0_raddr[12]_i_3_n_0 ;
  wire \frame0_raddr[12]_i_4_n_0 ;
  wire \frame0_raddr[12]_i_5_n_0 ;
  wire \frame0_raddr[12]_i_7_n_0 ;
  wire \frame0_raddr[12]_i_8_n_0 ;
  wire \frame0_raddr[12]_i_9_n_0 ;
  wire \frame0_raddr[16]_i_2_n_0 ;
  wire \frame0_raddr[16]_i_3_n_0 ;
  wire \frame0_raddr[16]_i_4_n_0 ;
  wire \frame0_raddr[16]_i_6_n_0 ;
  wire \frame0_raddr[16]_i_7_n_0 ;
  wire \frame0_raddr[4]_i_10_n_0 ;
  wire \frame0_raddr[4]_i_2_n_0 ;
  wire \frame0_raddr[4]_i_3_n_0 ;
  wire \frame0_raddr[4]_i_4_n_0 ;
  wire \frame0_raddr[4]_i_5_n_0 ;
  wire \frame0_raddr[4]_i_7_n_0 ;
  wire \frame0_raddr[4]_i_8_n_0 ;
  wire \frame0_raddr[4]_i_9_n_0 ;
  wire \frame0_raddr[8]_i_10_n_0 ;
  wire \frame0_raddr[8]_i_2_n_0 ;
  wire \frame0_raddr[8]_i_3_n_0 ;
  wire \frame0_raddr[8]_i_4_n_0 ;
  wire \frame0_raddr[8]_i_5_n_0 ;
  wire \frame0_raddr[8]_i_7_n_0 ;
  wire \frame0_raddr[8]_i_8_n_0 ;
  wire \frame0_raddr[8]_i_9_n_0 ;
  wire [18:0]frame0_raddr_reg;
  wire \frame0_raddr_reg[0]_i_16_n_0 ;
  wire \frame0_raddr_reg[0]_i_16_n_1 ;
  wire \frame0_raddr_reg[0]_i_16_n_2 ;
  wire \frame0_raddr_reg[0]_i_16_n_3 ;
  wire \frame0_raddr_reg[0]_i_2_n_0 ;
  wire \frame0_raddr_reg[0]_i_2_n_1 ;
  wire \frame0_raddr_reg[0]_i_2_n_2 ;
  wire \frame0_raddr_reg[0]_i_2_n_3 ;
  wire \frame0_raddr_reg[0]_i_2_n_4 ;
  wire \frame0_raddr_reg[0]_i_2_n_5 ;
  wire \frame0_raddr_reg[0]_i_2_n_6 ;
  wire \frame0_raddr_reg[0]_i_2_n_7 ;
  wire \frame0_raddr_reg[12]_i_1_n_0 ;
  wire \frame0_raddr_reg[12]_i_1_n_1 ;
  wire \frame0_raddr_reg[12]_i_1_n_2 ;
  wire \frame0_raddr_reg[12]_i_1_n_3 ;
  wire \frame0_raddr_reg[12]_i_1_n_4 ;
  wire \frame0_raddr_reg[12]_i_1_n_5 ;
  wire \frame0_raddr_reg[12]_i_1_n_6 ;
  wire \frame0_raddr_reg[12]_i_1_n_7 ;
  wire \frame0_raddr_reg[12]_i_6_n_0 ;
  wire \frame0_raddr_reg[12]_i_6_n_1 ;
  wire \frame0_raddr_reg[12]_i_6_n_2 ;
  wire \frame0_raddr_reg[12]_i_6_n_3 ;
  wire \frame0_raddr_reg[16]_i_1_n_2 ;
  wire \frame0_raddr_reg[16]_i_1_n_3 ;
  wire \frame0_raddr_reg[16]_i_1_n_5 ;
  wire \frame0_raddr_reg[16]_i_1_n_6 ;
  wire \frame0_raddr_reg[16]_i_1_n_7 ;
  wire \frame0_raddr_reg[16]_i_5_n_3 ;
  wire \frame0_raddr_reg[4]_i_1_n_0 ;
  wire \frame0_raddr_reg[4]_i_1_n_1 ;
  wire \frame0_raddr_reg[4]_i_1_n_2 ;
  wire \frame0_raddr_reg[4]_i_1_n_3 ;
  wire \frame0_raddr_reg[4]_i_1_n_4 ;
  wire \frame0_raddr_reg[4]_i_1_n_5 ;
  wire \frame0_raddr_reg[4]_i_1_n_6 ;
  wire \frame0_raddr_reg[4]_i_1_n_7 ;
  wire \frame0_raddr_reg[4]_i_6_n_0 ;
  wire \frame0_raddr_reg[4]_i_6_n_1 ;
  wire \frame0_raddr_reg[4]_i_6_n_2 ;
  wire \frame0_raddr_reg[4]_i_6_n_3 ;
  wire \frame0_raddr_reg[8]_i_1_n_0 ;
  wire \frame0_raddr_reg[8]_i_1_n_1 ;
  wire \frame0_raddr_reg[8]_i_1_n_2 ;
  wire \frame0_raddr_reg[8]_i_1_n_3 ;
  wire \frame0_raddr_reg[8]_i_1_n_4 ;
  wire \frame0_raddr_reg[8]_i_1_n_5 ;
  wire \frame0_raddr_reg[8]_i_1_n_6 ;
  wire \frame0_raddr_reg[8]_i_1_n_7 ;
  wire \frame0_raddr_reg[8]_i_6_n_0 ;
  wire \frame0_raddr_reg[8]_i_6_n_1 ;
  wire \frame0_raddr_reg[8]_i_6_n_2 ;
  wire \frame0_raddr_reg[8]_i_6_n_3 ;
  wire \frame0_waddr[18]_i_1_n_0 ;
  wire \frame0_waddr[18]_i_2_n_0 ;
  wire [18:0]frame0_waddr_counter;
  wire \frame0_waddr_counter0_inferred__1/i__carry__0_n_0 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__0_n_1 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__0_n_2 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__0_n_3 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__1_n_0 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__1_n_1 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__1_n_2 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__1_n_3 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__2_n_0 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__2_n_1 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__2_n_2 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__2_n_3 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry__3_n_3 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry_n_0 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry_n_1 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry_n_2 ;
  wire \frame0_waddr_counter0_inferred__1/i__carry_n_3 ;
  wire frame0_waddr_counter1;
  wire \frame0_waddr_counter[18]_i_10_n_0 ;
  wire \frame0_waddr_counter[18]_i_11_n_0 ;
  wire \frame0_waddr_counter[18]_i_12_n_0 ;
  wire \frame0_waddr_counter[18]_i_13_n_0 ;
  wire \frame0_waddr_counter[18]_i_14_n_0 ;
  wire \frame0_waddr_counter[18]_i_15_n_0 ;
  wire \frame0_waddr_counter[18]_i_16_n_0 ;
  wire \frame0_waddr_counter[18]_i_17_n_0 ;
  wire \frame0_waddr_counter[18]_i_18_n_0 ;
  wire \frame0_waddr_counter[18]_i_19_n_0 ;
  wire \frame0_waddr_counter[18]_i_1_n_0 ;
  wire \frame0_waddr_counter[18]_i_20_n_0 ;
  wire \frame0_waddr_counter[18]_i_21_n_0 ;
  wire \frame0_waddr_counter[18]_i_3_n_0 ;
  wire \frame0_waddr_counter[18]_i_5_n_0 ;
  wire \frame0_waddr_counter[18]_i_6_n_0 ;
  wire \frame0_waddr_counter[18]_i_7_n_0 ;
  wire \frame0_waddr_counter[18]_i_8_n_0 ;
  wire \frame0_waddr_counter[18]_i_9_n_0 ;
  wire \frame0_waddr_reg_n_0_[0] ;
  wire \frame0_waddr_reg_n_0_[10] ;
  wire \frame0_waddr_reg_n_0_[11] ;
  wire \frame0_waddr_reg_n_0_[12] ;
  wire \frame0_waddr_reg_n_0_[13] ;
  wire \frame0_waddr_reg_n_0_[14] ;
  wire \frame0_waddr_reg_n_0_[15] ;
  wire \frame0_waddr_reg_n_0_[16] ;
  wire \frame0_waddr_reg_n_0_[17] ;
  wire \frame0_waddr_reg_n_0_[18] ;
  wire \frame0_waddr_reg_n_0_[1] ;
  wire \frame0_waddr_reg_n_0_[2] ;
  wire \frame0_waddr_reg_n_0_[3] ;
  wire \frame0_waddr_reg_n_0_[4] ;
  wire \frame0_waddr_reg_n_0_[5] ;
  wire \frame0_waddr_reg_n_0_[6] ;
  wire \frame0_waddr_reg_n_0_[7] ;
  wire \frame0_waddr_reg_n_0_[8] ;
  wire \frame0_waddr_reg_n_0_[9] ;
  wire frame_counter0;
  wire \frame_counter[11]_i_2_n_0 ;
  wire \frame_counter[11]_i_3_n_0 ;
  wire \frame_counter[11]_i_4_n_0 ;
  wire \frame_counter[11]_i_5_n_0 ;
  wire \frame_counter[15]_i_3_n_0 ;
  wire \frame_counter[15]_i_4_n_0 ;
  wire \frame_counter[15]_i_5_n_0 ;
  wire \frame_counter[15]_i_6_n_0 ;
  wire \frame_counter[3]_i_2_n_0 ;
  wire \frame_counter[3]_i_3_n_0 ;
  wire \frame_counter[3]_i_4_n_0 ;
  wire \frame_counter[3]_i_5_n_0 ;
  wire \frame_counter[7]_i_2_n_0 ;
  wire \frame_counter[7]_i_3_n_0 ;
  wire \frame_counter[7]_i_4_n_0 ;
  wire \frame_counter[7]_i_5_n_0 ;
  wire \frame_counter_reg[11]_i_1_n_0 ;
  wire \frame_counter_reg[11]_i_1_n_1 ;
  wire \frame_counter_reg[11]_i_1_n_2 ;
  wire \frame_counter_reg[11]_i_1_n_3 ;
  wire \frame_counter_reg[11]_i_1_n_4 ;
  wire \frame_counter_reg[11]_i_1_n_5 ;
  wire \frame_counter_reg[11]_i_1_n_6 ;
  wire \frame_counter_reg[11]_i_1_n_7 ;
  wire \frame_counter_reg[15]_i_2_n_1 ;
  wire \frame_counter_reg[15]_i_2_n_2 ;
  wire \frame_counter_reg[15]_i_2_n_3 ;
  wire \frame_counter_reg[15]_i_2_n_4 ;
  wire \frame_counter_reg[15]_i_2_n_5 ;
  wire \frame_counter_reg[15]_i_2_n_6 ;
  wire \frame_counter_reg[15]_i_2_n_7 ;
  wire \frame_counter_reg[3]_i_1_n_0 ;
  wire \frame_counter_reg[3]_i_1_n_1 ;
  wire \frame_counter_reg[3]_i_1_n_2 ;
  wire \frame_counter_reg[3]_i_1_n_3 ;
  wire \frame_counter_reg[3]_i_1_n_4 ;
  wire \frame_counter_reg[3]_i_1_n_5 ;
  wire \frame_counter_reg[3]_i_1_n_6 ;
  wire \frame_counter_reg[3]_i_1_n_7 ;
  wire \frame_counter_reg[7]_i_1_n_0 ;
  wire \frame_counter_reg[7]_i_1_n_1 ;
  wire \frame_counter_reg[7]_i_1_n_2 ;
  wire \frame_counter_reg[7]_i_1_n_3 ;
  wire \frame_counter_reg[7]_i_1_n_4 ;
  wire \frame_counter_reg[7]_i_1_n_5 ;
  wire \frame_counter_reg[7]_i_1_n_6 ;
  wire \frame_counter_reg[7]_i_1_n_7 ;
  wire [15:0]frame_counter_w;
  wire \frame_wait[11]_i_2_n_0 ;
  wire \frame_wait[11]_i_3_n_0 ;
  wire \frame_wait[11]_i_4_n_0 ;
  wire \frame_wait[11]_i_5_n_0 ;
  wire \frame_wait[15]_i_2_n_0 ;
  wire \frame_wait[15]_i_3_n_0 ;
  wire \frame_wait[15]_i_4_n_0 ;
  wire \frame_wait[15]_i_5_n_0 ;
  wire \frame_wait[19]_i_2_n_0 ;
  wire \frame_wait[19]_i_3_n_0 ;
  wire \frame_wait[19]_i_4_n_0 ;
  wire \frame_wait[19]_i_5_n_0 ;
  wire \frame_wait[23]_i_2_n_0 ;
  wire \frame_wait[23]_i_3_n_0 ;
  wire \frame_wait[23]_i_4_n_0 ;
  wire \frame_wait[23]_i_5_n_0 ;
  wire \frame_wait[27]_i_2_n_0 ;
  wire \frame_wait[27]_i_3_n_0 ;
  wire \frame_wait[27]_i_4_n_0 ;
  wire \frame_wait[27]_i_5_n_0 ;
  wire \frame_wait[31]_i_10_n_0 ;
  wire \frame_wait[31]_i_11_n_0 ;
  wire \frame_wait[31]_i_12_n_0 ;
  wire \frame_wait[31]_i_1_n_0 ;
  wire \frame_wait[31]_i_2_n_0 ;
  wire \frame_wait[31]_i_4_n_0 ;
  wire \frame_wait[31]_i_5_n_0 ;
  wire \frame_wait[31]_i_6_n_0 ;
  wire \frame_wait[31]_i_7_n_0 ;
  wire \frame_wait[31]_i_8_n_0 ;
  wire \frame_wait[31]_i_9_n_0 ;
  wire \frame_wait[3]_i_2_n_0 ;
  wire \frame_wait[3]_i_3_n_0 ;
  wire \frame_wait[3]_i_4_n_0 ;
  wire \frame_wait[3]_i_5_n_0 ;
  wire \frame_wait[7]_i_2_n_0 ;
  wire \frame_wait[7]_i_3_n_0 ;
  wire \frame_wait[7]_i_4_n_0 ;
  wire \frame_wait[7]_i_5_n_0 ;
  wire \frame_wait_reg[11]_i_1_n_0 ;
  wire \frame_wait_reg[11]_i_1_n_1 ;
  wire \frame_wait_reg[11]_i_1_n_2 ;
  wire \frame_wait_reg[11]_i_1_n_3 ;
  wire \frame_wait_reg[11]_i_1_n_4 ;
  wire \frame_wait_reg[11]_i_1_n_5 ;
  wire \frame_wait_reg[11]_i_1_n_6 ;
  wire \frame_wait_reg[11]_i_1_n_7 ;
  wire \frame_wait_reg[15]_i_1_n_0 ;
  wire \frame_wait_reg[15]_i_1_n_1 ;
  wire \frame_wait_reg[15]_i_1_n_2 ;
  wire \frame_wait_reg[15]_i_1_n_3 ;
  wire \frame_wait_reg[15]_i_1_n_4 ;
  wire \frame_wait_reg[15]_i_1_n_5 ;
  wire \frame_wait_reg[15]_i_1_n_6 ;
  wire \frame_wait_reg[15]_i_1_n_7 ;
  wire \frame_wait_reg[19]_i_1_n_0 ;
  wire \frame_wait_reg[19]_i_1_n_1 ;
  wire \frame_wait_reg[19]_i_1_n_2 ;
  wire \frame_wait_reg[19]_i_1_n_3 ;
  wire \frame_wait_reg[19]_i_1_n_4 ;
  wire \frame_wait_reg[19]_i_1_n_5 ;
  wire \frame_wait_reg[19]_i_1_n_6 ;
  wire \frame_wait_reg[19]_i_1_n_7 ;
  wire \frame_wait_reg[23]_i_1_n_0 ;
  wire \frame_wait_reg[23]_i_1_n_1 ;
  wire \frame_wait_reg[23]_i_1_n_2 ;
  wire \frame_wait_reg[23]_i_1_n_3 ;
  wire \frame_wait_reg[23]_i_1_n_4 ;
  wire \frame_wait_reg[23]_i_1_n_5 ;
  wire \frame_wait_reg[23]_i_1_n_6 ;
  wire \frame_wait_reg[23]_i_1_n_7 ;
  wire \frame_wait_reg[27]_i_1_n_0 ;
  wire \frame_wait_reg[27]_i_1_n_1 ;
  wire \frame_wait_reg[27]_i_1_n_2 ;
  wire \frame_wait_reg[27]_i_1_n_3 ;
  wire \frame_wait_reg[27]_i_1_n_4 ;
  wire \frame_wait_reg[27]_i_1_n_5 ;
  wire \frame_wait_reg[27]_i_1_n_6 ;
  wire \frame_wait_reg[27]_i_1_n_7 ;
  wire \frame_wait_reg[31]_i_3_n_1 ;
  wire \frame_wait_reg[31]_i_3_n_2 ;
  wire \frame_wait_reg[31]_i_3_n_3 ;
  wire \frame_wait_reg[31]_i_3_n_4 ;
  wire \frame_wait_reg[31]_i_3_n_5 ;
  wire \frame_wait_reg[31]_i_3_n_6 ;
  wire \frame_wait_reg[31]_i_3_n_7 ;
  wire \frame_wait_reg[3]_i_1_n_0 ;
  wire \frame_wait_reg[3]_i_1_n_1 ;
  wire \frame_wait_reg[3]_i_1_n_2 ;
  wire \frame_wait_reg[3]_i_1_n_3 ;
  wire \frame_wait_reg[3]_i_1_n_4 ;
  wire \frame_wait_reg[3]_i_1_n_5 ;
  wire \frame_wait_reg[3]_i_1_n_6 ;
  wire \frame_wait_reg[3]_i_1_n_7 ;
  wire \frame_wait_reg[7]_i_1_n_0 ;
  wire \frame_wait_reg[7]_i_1_n_1 ;
  wire \frame_wait_reg[7]_i_1_n_2 ;
  wire \frame_wait_reg[7]_i_1_n_3 ;
  wire \frame_wait_reg[7]_i_1_n_4 ;
  wire \frame_wait_reg[7]_i_1_n_5 ;
  wire \frame_wait_reg[7]_i_1_n_6 ;
  wire \frame_wait_reg[7]_i_1_n_7 ;
  wire [31:0]frame_wait_w;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire l_e_d;
  wire l_e_d_INST_0_i_1_n_0;
  wire l_e_d_INST_0_i_2_n_0;
  wire l_e_d_INST_0_i_3_n_0;
  wire l_e_d_INST_0_i_4_n_0;
  wire l_e_d_INST_0_i_5_n_0;
  wire l_e_d_INST_0_i_6_n_0;
  wire l_e_d_INST_0_i_7_n_0;
  wire l_e_d_INST_0_i_8_n_0;
  wire \led_counter[0]_i_1_n_0 ;
  wire \led_counter[0]_i_2_n_0 ;
  wire \led_counter[13]_i_2_n_0 ;
  wire \led_counter[13]_i_3_n_0 ;
  wire \led_counter[13]_i_4_n_0 ;
  wire \led_counter[13]_i_5_n_0 ;
  wire \led_counter[17]_i_2_n_0 ;
  wire \led_counter[17]_i_3_n_0 ;
  wire \led_counter[17]_i_4_n_0 ;
  wire \led_counter[17]_i_5_n_0 ;
  wire \led_counter[1]_i_2_n_0 ;
  wire \led_counter[1]_i_3_n_0 ;
  wire \led_counter[1]_i_4_n_0 ;
  wire \led_counter[1]_i_5_n_0 ;
  wire \led_counter[21]_i_2_n_0 ;
  wire \led_counter[21]_i_3_n_0 ;
  wire \led_counter[21]_i_4_n_0 ;
  wire \led_counter[21]_i_5_n_0 ;
  wire \led_counter[25]_i_2_n_0 ;
  wire \led_counter[25]_i_3_n_0 ;
  wire \led_counter[25]_i_4_n_0 ;
  wire \led_counter[25]_i_5_n_0 ;
  wire \led_counter[29]_i_2_n_0 ;
  wire \led_counter[29]_i_3_n_0 ;
  wire \led_counter[29]_i_4_n_0 ;
  wire \led_counter[5]_i_2_n_0 ;
  wire \led_counter[5]_i_3_n_0 ;
  wire \led_counter[5]_i_4_n_0 ;
  wire \led_counter[5]_i_5_n_0 ;
  wire \led_counter[9]_i_2_n_0 ;
  wire \led_counter[9]_i_3_n_0 ;
  wire \led_counter[9]_i_4_n_0 ;
  wire \led_counter[9]_i_5_n_0 ;
  wire [31:0]led_counter_reg;
  wire \led_counter_reg[13]_i_1_n_0 ;
  wire \led_counter_reg[13]_i_1_n_1 ;
  wire \led_counter_reg[13]_i_1_n_2 ;
  wire \led_counter_reg[13]_i_1_n_3 ;
  wire \led_counter_reg[13]_i_1_n_4 ;
  wire \led_counter_reg[13]_i_1_n_5 ;
  wire \led_counter_reg[13]_i_1_n_6 ;
  wire \led_counter_reg[13]_i_1_n_7 ;
  wire \led_counter_reg[17]_i_1_n_0 ;
  wire \led_counter_reg[17]_i_1_n_1 ;
  wire \led_counter_reg[17]_i_1_n_2 ;
  wire \led_counter_reg[17]_i_1_n_3 ;
  wire \led_counter_reg[17]_i_1_n_4 ;
  wire \led_counter_reg[17]_i_1_n_5 ;
  wire \led_counter_reg[17]_i_1_n_6 ;
  wire \led_counter_reg[17]_i_1_n_7 ;
  wire \led_counter_reg[1]_i_1_n_0 ;
  wire \led_counter_reg[1]_i_1_n_1 ;
  wire \led_counter_reg[1]_i_1_n_2 ;
  wire \led_counter_reg[1]_i_1_n_3 ;
  wire \led_counter_reg[1]_i_1_n_4 ;
  wire \led_counter_reg[1]_i_1_n_5 ;
  wire \led_counter_reg[1]_i_1_n_6 ;
  wire \led_counter_reg[1]_i_1_n_7 ;
  wire \led_counter_reg[21]_i_1_n_0 ;
  wire \led_counter_reg[21]_i_1_n_1 ;
  wire \led_counter_reg[21]_i_1_n_2 ;
  wire \led_counter_reg[21]_i_1_n_3 ;
  wire \led_counter_reg[21]_i_1_n_4 ;
  wire \led_counter_reg[21]_i_1_n_5 ;
  wire \led_counter_reg[21]_i_1_n_6 ;
  wire \led_counter_reg[21]_i_1_n_7 ;
  wire \led_counter_reg[25]_i_1_n_0 ;
  wire \led_counter_reg[25]_i_1_n_1 ;
  wire \led_counter_reg[25]_i_1_n_2 ;
  wire \led_counter_reg[25]_i_1_n_3 ;
  wire \led_counter_reg[25]_i_1_n_4 ;
  wire \led_counter_reg[25]_i_1_n_5 ;
  wire \led_counter_reg[25]_i_1_n_6 ;
  wire \led_counter_reg[25]_i_1_n_7 ;
  wire \led_counter_reg[29]_i_1_n_2 ;
  wire \led_counter_reg[29]_i_1_n_3 ;
  wire \led_counter_reg[29]_i_1_n_5 ;
  wire \led_counter_reg[29]_i_1_n_6 ;
  wire \led_counter_reg[29]_i_1_n_7 ;
  wire \led_counter_reg[5]_i_1_n_0 ;
  wire \led_counter_reg[5]_i_1_n_1 ;
  wire \led_counter_reg[5]_i_1_n_2 ;
  wire \led_counter_reg[5]_i_1_n_3 ;
  wire \led_counter_reg[5]_i_1_n_4 ;
  wire \led_counter_reg[5]_i_1_n_5 ;
  wire \led_counter_reg[5]_i_1_n_6 ;
  wire \led_counter_reg[5]_i_1_n_7 ;
  wire \led_counter_reg[9]_i_1_n_0 ;
  wire \led_counter_reg[9]_i_1_n_1 ;
  wire \led_counter_reg[9]_i_1_n_2 ;
  wire \led_counter_reg[9]_i_1_n_3 ;
  wire \led_counter_reg[9]_i_1_n_4 ;
  wire \led_counter_reg[9]_i_1_n_5 ;
  wire \led_counter_reg[9]_i_1_n_6 ;
  wire \led_counter_reg[9]_i_1_n_7 ;
  wire line_counter0;
  wire \line_counter[11]_i_2_n_0 ;
  wire \line_counter[11]_i_3_n_0 ;
  wire \line_counter[11]_i_4_n_0 ;
  wire \line_counter[11]_i_5_n_0 ;
  wire \line_counter[15]_i_1_n_0 ;
  wire \line_counter[15]_i_4_n_0 ;
  wire \line_counter[15]_i_5_n_0 ;
  wire \line_counter[15]_i_6_n_0 ;
  wire \line_counter[15]_i_7_n_0 ;
  wire \line_counter[3]_i_2_n_0 ;
  wire \line_counter[3]_i_3_n_0 ;
  wire \line_counter[3]_i_4_n_0 ;
  wire \line_counter[3]_i_5_n_0 ;
  wire \line_counter[7]_i_2_n_0 ;
  wire \line_counter[7]_i_3_n_0 ;
  wire \line_counter[7]_i_4_n_0 ;
  wire \line_counter[7]_i_5_n_0 ;
  wire \line_counter_reg[11]_i_1_n_0 ;
  wire \line_counter_reg[11]_i_1_n_1 ;
  wire \line_counter_reg[11]_i_1_n_2 ;
  wire \line_counter_reg[11]_i_1_n_3 ;
  wire \line_counter_reg[11]_i_1_n_4 ;
  wire \line_counter_reg[11]_i_1_n_5 ;
  wire \line_counter_reg[11]_i_1_n_6 ;
  wire \line_counter_reg[11]_i_1_n_7 ;
  wire \line_counter_reg[15]_i_3_n_1 ;
  wire \line_counter_reg[15]_i_3_n_2 ;
  wire \line_counter_reg[15]_i_3_n_3 ;
  wire \line_counter_reg[15]_i_3_n_4 ;
  wire \line_counter_reg[15]_i_3_n_5 ;
  wire \line_counter_reg[15]_i_3_n_6 ;
  wire \line_counter_reg[15]_i_3_n_7 ;
  wire \line_counter_reg[3]_i_1_n_0 ;
  wire \line_counter_reg[3]_i_1_n_1 ;
  wire \line_counter_reg[3]_i_1_n_2 ;
  wire \line_counter_reg[3]_i_1_n_3 ;
  wire \line_counter_reg[3]_i_1_n_4 ;
  wire \line_counter_reg[3]_i_1_n_5 ;
  wire \line_counter_reg[3]_i_1_n_6 ;
  wire \line_counter_reg[3]_i_1_n_7 ;
  wire \line_counter_reg[7]_i_1_n_0 ;
  wire \line_counter_reg[7]_i_1_n_1 ;
  wire \line_counter_reg[7]_i_1_n_2 ;
  wire \line_counter_reg[7]_i_1_n_3 ;
  wire \line_counter_reg[7]_i_1_n_4 ;
  wire \line_counter_reg[7]_i_1_n_5 ;
  wire \line_counter_reg[7]_i_1_n_6 ;
  wire \line_counter_reg[7]_i_1_n_7 ;
  wire [15:0]line_counter_w;
  wire [18:0]p_2_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tuser;
  wire s00_axis_tvalid;
  wire [0:0]store_new_data_states;
  wire store_new_data_states0;
  wire \store_new_data_states[0]_i_1_n_0 ;
  wire [3:3]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_frame0_raddr_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame0_raddr_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_frame0_raddr_reg[16]_i_5_CO_UNCONNECTED ;
  wire [3:2]\NLW_frame0_raddr_reg[16]_i_5_O_UNCONNECTED ;
  wire [3:1]\NLW_frame0_waddr_counter0_inferred__1/i__carry__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_frame0_waddr_counter0_inferred__1/i__carry__3_O_UNCONNECTED ;
  wire [3:3]\NLW_frame_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_frame_wait_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_led_counter_reg[29]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_led_counter_reg[29]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_line_counter_reg[15]_i_3_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h2)) 
    \counter[11]_i_2 
       (.I0(counter_w[11]),
        .O(\counter[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[11]_i_3 
       (.I0(counter_w[10]),
        .O(\counter[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[11]_i_4 
       (.I0(counter_w[9]),
        .O(\counter[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[11]_i_5 
       (.I0(counter_w[8]),
        .O(\counter[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[15]_i_2 
       (.I0(counter_w[15]),
        .O(\counter[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[15]_i_3 
       (.I0(counter_w[14]),
        .O(\counter[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[15]_i_4 
       (.I0(counter_w[13]),
        .O(\counter[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[15]_i_5 
       (.I0(counter_w[12]),
        .O(\counter[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[19]_i_2 
       (.I0(counter_w[19]),
        .O(\counter[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[19]_i_3 
       (.I0(counter_w[18]),
        .O(\counter[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[19]_i_4 
       (.I0(counter_w[17]),
        .O(\counter[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[19]_i_5 
       (.I0(counter_w[16]),
        .O(\counter[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[23]_i_2 
       (.I0(counter_w[23]),
        .O(\counter[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[23]_i_3 
       (.I0(counter_w[22]),
        .O(\counter[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[23]_i_4 
       (.I0(counter_w[21]),
        .O(\counter[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[23]_i_5 
       (.I0(counter_w[20]),
        .O(\counter[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[27]_i_2 
       (.I0(counter_w[27]),
        .O(\counter[27]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[27]_i_3 
       (.I0(counter_w[26]),
        .O(\counter[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[27]_i_4 
       (.I0(counter_w[25]),
        .O(\counter[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[27]_i_5 
       (.I0(counter_w[24]),
        .O(\counter[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(clear));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[31]_i_3 
       (.I0(counter_w[31]),
        .O(\counter[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[31]_i_4 
       (.I0(counter_w[30]),
        .O(\counter[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[31]_i_5 
       (.I0(counter_w[29]),
        .O(\counter[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[31]_i_6 
       (.I0(counter_w[28]),
        .O(\counter[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[3]_i_2 
       (.I0(counter_w[3]),
        .O(\counter[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[3]_i_3 
       (.I0(counter_w[2]),
        .O(\counter[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[3]_i_4 
       (.I0(counter_w[1]),
        .O(\counter[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[3]_i_5 
       (.I0(counter_w[0]),
        .O(\counter[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[7]_i_2 
       (.I0(counter_w[7]),
        .O(\counter[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[7]_i_3 
       (.I0(counter_w[6]),
        .O(\counter[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[7]_i_4 
       (.I0(counter_w[5]),
        .O(\counter[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \counter[7]_i_5 
       (.I0(counter_w[4]),
        .O(\counter[7]_i_5_n_0 ));
  FDRE \counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_7 ),
        .Q(counter_w[0]),
        .R(clear));
  FDRE \counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_5 ),
        .Q(counter_w[10]),
        .R(clear));
  FDRE \counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_4 ),
        .Q(counter_w[11]),
        .R(clear));
  CARRY4 \counter_reg[11]_i_1 
       (.CI(\counter_reg[7]_i_1_n_0 ),
        .CO({\counter_reg[11]_i_1_n_0 ,\counter_reg[11]_i_1_n_1 ,\counter_reg[11]_i_1_n_2 ,\counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[11]_i_1_n_4 ,\counter_reg[11]_i_1_n_5 ,\counter_reg[11]_i_1_n_6 ,\counter_reg[11]_i_1_n_7 }),
        .S({\counter[11]_i_2_n_0 ,\counter[11]_i_3_n_0 ,\counter[11]_i_4_n_0 ,\counter[11]_i_5_n_0 }));
  FDRE \counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_7 ),
        .Q(counter_w[12]),
        .R(clear));
  FDRE \counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_6 ),
        .Q(counter_w[13]),
        .R(clear));
  FDRE \counter_reg[14] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_5 ),
        .Q(counter_w[14]),
        .R(clear));
  FDRE \counter_reg[15] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_1_n_4 ),
        .Q(counter_w[15]),
        .R(clear));
  CARRY4 \counter_reg[15]_i_1 
       (.CI(\counter_reg[11]_i_1_n_0 ),
        .CO({\counter_reg[15]_i_1_n_0 ,\counter_reg[15]_i_1_n_1 ,\counter_reg[15]_i_1_n_2 ,\counter_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[15]_i_1_n_4 ,\counter_reg[15]_i_1_n_5 ,\counter_reg[15]_i_1_n_6 ,\counter_reg[15]_i_1_n_7 }),
        .S({\counter[15]_i_2_n_0 ,\counter[15]_i_3_n_0 ,\counter[15]_i_4_n_0 ,\counter[15]_i_5_n_0 }));
  FDRE \counter_reg[16] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[19]_i_1_n_7 ),
        .Q(counter_w[16]),
        .R(clear));
  FDRE \counter_reg[17] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[19]_i_1_n_6 ),
        .Q(counter_w[17]),
        .R(clear));
  FDRE \counter_reg[18] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[19]_i_1_n_5 ),
        .Q(counter_w[18]),
        .R(clear));
  FDRE \counter_reg[19] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[19]_i_1_n_4 ),
        .Q(counter_w[19]),
        .R(clear));
  CARRY4 \counter_reg[19]_i_1 
       (.CI(\counter_reg[15]_i_1_n_0 ),
        .CO({\counter_reg[19]_i_1_n_0 ,\counter_reg[19]_i_1_n_1 ,\counter_reg[19]_i_1_n_2 ,\counter_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[19]_i_1_n_4 ,\counter_reg[19]_i_1_n_5 ,\counter_reg[19]_i_1_n_6 ,\counter_reg[19]_i_1_n_7 }),
        .S({\counter[19]_i_2_n_0 ,\counter[19]_i_3_n_0 ,\counter[19]_i_4_n_0 ,\counter[19]_i_5_n_0 }));
  FDRE \counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_6 ),
        .Q(counter_w[1]),
        .R(clear));
  FDRE \counter_reg[20] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_7 ),
        .Q(counter_w[20]),
        .R(clear));
  FDRE \counter_reg[21] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_6 ),
        .Q(counter_w[21]),
        .R(clear));
  FDRE \counter_reg[22] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_5 ),
        .Q(counter_w[22]),
        .R(clear));
  FDRE \counter_reg[23] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[23]_i_1_n_4 ),
        .Q(counter_w[23]),
        .R(clear));
  CARRY4 \counter_reg[23]_i_1 
       (.CI(\counter_reg[19]_i_1_n_0 ),
        .CO({\counter_reg[23]_i_1_n_0 ,\counter_reg[23]_i_1_n_1 ,\counter_reg[23]_i_1_n_2 ,\counter_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[23]_i_1_n_4 ,\counter_reg[23]_i_1_n_5 ,\counter_reg[23]_i_1_n_6 ,\counter_reg[23]_i_1_n_7 }),
        .S({\counter[23]_i_2_n_0 ,\counter[23]_i_3_n_0 ,\counter[23]_i_4_n_0 ,\counter[23]_i_5_n_0 }));
  FDRE \counter_reg[24] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[27]_i_1_n_7 ),
        .Q(counter_w[24]),
        .R(clear));
  FDRE \counter_reg[25] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[27]_i_1_n_6 ),
        .Q(counter_w[25]),
        .R(clear));
  FDRE \counter_reg[26] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[27]_i_1_n_5 ),
        .Q(counter_w[26]),
        .R(clear));
  FDRE \counter_reg[27] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[27]_i_1_n_4 ),
        .Q(counter_w[27]),
        .R(clear));
  CARRY4 \counter_reg[27]_i_1 
       (.CI(\counter_reg[23]_i_1_n_0 ),
        .CO({\counter_reg[27]_i_1_n_0 ,\counter_reg[27]_i_1_n_1 ,\counter_reg[27]_i_1_n_2 ,\counter_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[27]_i_1_n_4 ,\counter_reg[27]_i_1_n_5 ,\counter_reg[27]_i_1_n_6 ,\counter_reg[27]_i_1_n_7 }),
        .S({\counter[27]_i_2_n_0 ,\counter[27]_i_3_n_0 ,\counter[27]_i_4_n_0 ,\counter[27]_i_5_n_0 }));
  FDRE \counter_reg[28] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_7 ),
        .Q(counter_w[28]),
        .R(clear));
  FDRE \counter_reg[29] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_6 ),
        .Q(counter_w[29]),
        .R(clear));
  FDRE \counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_5 ),
        .Q(counter_w[2]),
        .R(clear));
  FDRE \counter_reg[30] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_5 ),
        .Q(counter_w[30]),
        .R(clear));
  FDRE \counter_reg[31] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[31]_i_2_n_4 ),
        .Q(counter_w[31]),
        .R(clear));
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[27]_i_1_n_0 ),
        .CO({\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3],\counter_reg[31]_i_2_n_1 ,\counter_reg[31]_i_2_n_2 ,\counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[31]_i_2_n_4 ,\counter_reg[31]_i_2_n_5 ,\counter_reg[31]_i_2_n_6 ,\counter_reg[31]_i_2_n_7 }),
        .S({\counter[31]_i_3_n_0 ,\counter[31]_i_4_n_0 ,\counter[31]_i_5_n_0 ,\counter[31]_i_6_n_0 }));
  FDRE \counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_4 ),
        .Q(counter_w[3]),
        .R(clear));
  CARRY4 \counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[3]_i_1_n_0 ,\counter_reg[3]_i_1_n_1 ,\counter_reg[3]_i_1_n_2 ,\counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counter_reg[3]_i_1_n_4 ,\counter_reg[3]_i_1_n_5 ,\counter_reg[3]_i_1_n_6 ,\counter_reg[3]_i_1_n_7 }),
        .S({\counter[3]_i_2_n_0 ,\counter[3]_i_3_n_0 ,\counter[3]_i_4_n_0 ,\counter[3]_i_5_n_0 }));
  FDRE \counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_7 ),
        .Q(counter_w[4]),
        .R(clear));
  FDRE \counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_6 ),
        .Q(counter_w[5]),
        .R(clear));
  FDRE \counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_5 ),
        .Q(counter_w[6]),
        .R(clear));
  FDRE \counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_4 ),
        .Q(counter_w[7]),
        .R(clear));
  CARRY4 \counter_reg[7]_i_1 
       (.CI(\counter_reg[3]_i_1_n_0 ),
        .CO({\counter_reg[7]_i_1_n_0 ,\counter_reg[7]_i_1_n_1 ,\counter_reg[7]_i_1_n_2 ,\counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[7]_i_1_n_4 ,\counter_reg[7]_i_1_n_5 ,\counter_reg[7]_i_1_n_6 ,\counter_reg[7]_i_1_n_7 }),
        .S({\counter[7]_i_2_n_0 ,\counter[7]_i_3_n_0 ,\counter[7]_i_4_n_0 ,\counter[7]_i_5_n_0 }));
  FDRE \counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_7 ),
        .Q(counter_w[8]),
        .R(clear));
  FDRE \counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_6 ),
        .Q(counter_w[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hAAAA000800080008)) 
    \frame0_raddr[0]_i_1 
       (.I0(store_new_data_states),
        .I1(\frame0_raddr[0]_i_3_n_0 ),
        .I2(\frame0_raddr[0]_i_4_n_0 ),
        .I3(\frame0_raddr[0]_i_5_n_0 ),
        .I4(s00_axis_tvalid),
        .I5(s00_axis_tready),
        .O(\frame0_raddr[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame0_raddr[0]_i_10 
       (.I0(frame0_raddr_reg[0]),
        .O(\frame0_raddr[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h333333FEFFFFFFFF)) 
    \frame0_raddr[0]_i_11 
       (.I0(frame0_raddr_reg[12]),
        .I1(frame0_raddr_reg[18]),
        .I2(frame0_raddr_reg[13]),
        .I3(frame0_raddr_reg[17]),
        .I4(frame0_raddr_reg[15]),
        .I5(\frame0_raddr[0]_i_18_n_0 ),
        .O(\frame0_raddr[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \frame0_raddr[0]_i_12 
       (.I0(frame0_raddr_reg[12]),
        .I1(frame0_raddr_reg[0]),
        .I2(frame0_raddr_reg[14]),
        .I3(frame0_raddr_reg[15]),
        .I4(frame0_raddr_reg[17]),
        .O(\frame0_raddr[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5554555500010000)) 
    \frame0_raddr[0]_i_13 
       (.I0(frame0_raddr_reg[14]),
        .I1(\frame0_waddr_counter[18]_i_10_n_0 ),
        .I2(frame0_raddr_reg[9]),
        .I3(\frame0_waddr_counter[18]_i_8_n_0 ),
        .I4(\frame0_raddr[0]_i_3_n_0 ),
        .I5(frame0_raddr_reg[12]),
        .O(\frame0_raddr[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \frame0_raddr[0]_i_14 
       (.I0(frame0_raddr_reg[16]),
        .I1(frame0_raddr_reg[18]),
        .O(\frame0_raddr[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEEEEEEBE)) 
    \frame0_raddr[0]_i_15 
       (.I0(\frame0_raddr[0]_i_12_n_0 ),
        .I1(frame0_raddr_reg[12]),
        .I2(\frame0_raddr[0]_i_3_n_0 ),
        .I3(\frame0_waddr_counter[18]_i_8_n_0 ),
        .I4(\frame0_raddr[0]_i_19_n_0 ),
        .I5(frame0_raddr_reg[14]),
        .O(\frame0_raddr[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \frame0_raddr[0]_i_17 
       (.I0(\frame0_raddr[0]_i_24_n_0 ),
        .I1(\frame0_raddr[0]_i_25_n_0 ),
        .I2(\frame0_raddr[0]_i_26_n_0 ),
        .I3(\frame0_raddr[0]_i_27_n_0 ),
        .I4(\frame0_raddr[0]_i_28_n_0 ),
        .O(\frame0_raddr[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFBFBFB)) 
    \frame0_raddr[0]_i_18 
       (.I0(frame0_raddr_reg[14]),
        .I1(frame0_raddr_reg[15]),
        .I2(frame0_raddr_reg[17]),
        .I3(frame0_raddr_reg[12]),
        .I4(frame0_raddr_reg[13]),
        .I5(frame0_raddr_reg[16]),
        .O(\frame0_raddr[0]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame0_raddr[0]_i_19 
       (.I0(frame0_raddr_reg[9]),
        .I1(frame0_raddr_reg[1]),
        .I2(frame0_raddr_reg[3]),
        .I3(frame0_raddr_reg[2]),
        .O(\frame0_raddr[0]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[0]_i_20 
       (.I0(frame0_raddr_reg[4]),
        .O(\frame0_raddr[0]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[0]_i_21 
       (.I0(frame0_raddr_reg[3]),
        .O(\frame0_raddr[0]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[0]_i_22 
       (.I0(frame0_raddr_reg[2]),
        .O(\frame0_raddr[0]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[0]_i_23 
       (.I0(frame0_raddr_reg[1]),
        .O(\frame0_raddr[0]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame0_raddr[0]_i_24 
       (.I0(frame0_raddr_reg[11]),
        .I1(frame0_raddr_reg[10]),
        .I2(frame0_raddr_reg[9]),
        .I3(frame0_raddr_reg[8]),
        .O(\frame0_raddr[0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \frame0_raddr[0]_i_25 
       (.I0(frame0_raddr_reg[17]),
        .I1(frame0_raddr_reg[14]),
        .I2(frame0_raddr_reg[15]),
        .I3(frame0_raddr_reg[12]),
        .O(\frame0_raddr[0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \frame0_raddr[0]_i_26 
       (.I0(frame0_raddr_reg[16]),
        .I1(frame0_raddr_reg[1]),
        .I2(frame0_raddr_reg[3]),
        .I3(frame0_raddr_reg[2]),
        .O(\frame0_raddr[0]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \frame0_raddr[0]_i_27 
       (.I0(frame0_raddr_reg[5]),
        .I1(frame0_raddr_reg[4]),
        .I2(frame0_raddr_reg[7]),
        .I3(frame0_raddr_reg[6]),
        .O(\frame0_raddr[0]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \frame0_raddr[0]_i_28 
       (.I0(frame0_raddr_reg[18]),
        .I1(frame0_raddr_reg[0]),
        .I2(frame0_raddr_reg[13]),
        .O(\frame0_raddr[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \frame0_raddr[0]_i_3 
       (.I0(frame0_raddr_reg[8]),
        .I1(frame0_raddr_reg[7]),
        .I2(frame0_raddr_reg[11]),
        .I3(frame0_raddr_reg[10]),
        .O(\frame0_raddr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \frame0_raddr[0]_i_4 
       (.I0(\frame0_waddr_counter[18]_i_8_n_0 ),
        .I1(frame0_raddr_reg[3]),
        .I2(frame0_raddr_reg[2]),
        .I3(frame0_raddr_reg[17]),
        .I4(frame0_raddr_reg[9]),
        .I5(frame0_raddr_reg[14]),
        .O(\frame0_raddr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \frame0_raddr[0]_i_5 
       (.I0(frame0_raddr_reg[18]),
        .I1(frame0_raddr_reg[15]),
        .I2(frame0_raddr_reg[1]),
        .I3(frame0_raddr_reg[16]),
        .I4(frame0_raddr_reg[12]),
        .I5(frame0_raddr_reg[13]),
        .O(\frame0_raddr[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h70707077)) 
    \frame0_raddr[0]_i_6 
       (.I0(frame0_raddr_reg[18]),
        .I1(frame0_raddr_reg[16]),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_12_n_0 ),
        .I4(\frame0_raddr[0]_i_13_n_0 ),
        .O(frame0_waddr_counter1));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[0]_i_7 
       (.I0(frame0_raddr_reg[3]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[3]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[0]_i_8 
       (.I0(frame0_raddr_reg[2]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[2]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[0]_i_9 
       (.I0(frame0_raddr_reg[1]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[1]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[12]_i_10 
       (.I0(frame0_raddr_reg[13]),
        .O(\frame0_raddr[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[12]_i_2 
       (.I0(frame0_raddr_reg[15]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[15]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[12]_i_3 
       (.I0(frame0_raddr_reg[14]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[14]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[12]_i_4 
       (.I0(frame0_raddr_reg[13]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[13]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[12]_i_5 
       (.I0(frame0_raddr_reg[12]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[12]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[12]_i_7 
       (.I0(frame0_raddr_reg[16]),
        .O(\frame0_raddr[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[12]_i_8 
       (.I0(frame0_raddr_reg[15]),
        .O(\frame0_raddr[12]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[12]_i_9 
       (.I0(frame0_raddr_reg[14]),
        .O(\frame0_raddr[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h20222022AFAA2022)) 
    \frame0_raddr[16]_i_2 
       (.I0(frame0_raddr_reg[18]),
        .I1(frame0_raddr_reg[16]),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[18]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[16]_i_3 
       (.I0(frame0_raddr_reg[17]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[17]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h44444444CFCC4444)) 
    \frame0_raddr[16]_i_4 
       (.I0(frame0_raddr_reg[18]),
        .I1(frame0_raddr_reg[16]),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[16]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[16]_i_6 
       (.I0(frame0_raddr_reg[18]),
        .O(\frame0_raddr[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[16]_i_7 
       (.I0(frame0_raddr_reg[17]),
        .O(\frame0_raddr[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[4]_i_10 
       (.I0(frame0_raddr_reg[5]),
        .O(\frame0_raddr[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[4]_i_2 
       (.I0(frame0_raddr_reg[7]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[7]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[4]_i_3 
       (.I0(frame0_raddr_reg[6]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[6]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[4]_i_4 
       (.I0(frame0_raddr_reg[5]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[5]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[4]_i_5 
       (.I0(frame0_raddr_reg[4]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[4]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[4]_i_7 
       (.I0(frame0_raddr_reg[8]),
        .O(\frame0_raddr[4]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[4]_i_8 
       (.I0(frame0_raddr_reg[7]),
        .O(\frame0_raddr[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[4]_i_9 
       (.I0(frame0_raddr_reg[6]),
        .O(\frame0_raddr[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[8]_i_10 
       (.I0(frame0_raddr_reg[9]),
        .O(\frame0_raddr[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[8]_i_2 
       (.I0(frame0_raddr_reg[11]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[11]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[8]_i_3 
       (.I0(frame0_raddr_reg[10]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[10]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[8]_i_4 
       (.I0(frame0_raddr_reg[9]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[9]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h20222022EFEE2022)) 
    \frame0_raddr[8]_i_5 
       (.I0(frame0_raddr_reg[8]),
        .I1(\frame0_raddr[0]_i_14_n_0 ),
        .I2(\frame0_raddr[0]_i_11_n_0 ),
        .I3(\frame0_raddr[0]_i_15_n_0 ),
        .I4(frame0_raddr0[8]),
        .I5(\frame0_raddr[0]_i_17_n_0 ),
        .O(\frame0_raddr[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[8]_i_7 
       (.I0(frame0_raddr_reg[12]),
        .O(\frame0_raddr[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[8]_i_8 
       (.I0(frame0_raddr_reg[11]),
        .O(\frame0_raddr[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame0_raddr[8]_i_9 
       (.I0(frame0_raddr_reg[10]),
        .O(\frame0_raddr[8]_i_9_n_0 ));
  FDRE \frame0_raddr_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[0]_i_2_n_7 ),
        .Q(frame0_raddr_reg[0]),
        .R(clear));
  CARRY4 \frame0_raddr_reg[0]_i_16 
       (.CI(1'b0),
        .CO({\frame0_raddr_reg[0]_i_16_n_0 ,\frame0_raddr_reg[0]_i_16_n_1 ,\frame0_raddr_reg[0]_i_16_n_2 ,\frame0_raddr_reg[0]_i_16_n_3 }),
        .CYINIT(frame0_raddr_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame0_raddr0[4:1]),
        .S({\frame0_raddr[0]_i_20_n_0 ,\frame0_raddr[0]_i_21_n_0 ,\frame0_raddr[0]_i_22_n_0 ,\frame0_raddr[0]_i_23_n_0 }));
  CARRY4 \frame0_raddr_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\frame0_raddr_reg[0]_i_2_n_0 ,\frame0_raddr_reg[0]_i_2_n_1 ,\frame0_raddr_reg[0]_i_2_n_2 ,\frame0_raddr_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,frame0_waddr_counter1}),
        .O({\frame0_raddr_reg[0]_i_2_n_4 ,\frame0_raddr_reg[0]_i_2_n_5 ,\frame0_raddr_reg[0]_i_2_n_6 ,\frame0_raddr_reg[0]_i_2_n_7 }),
        .S({\frame0_raddr[0]_i_7_n_0 ,\frame0_raddr[0]_i_8_n_0 ,\frame0_raddr[0]_i_9_n_0 ,\frame0_raddr[0]_i_10_n_0 }));
  FDRE \frame0_raddr_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[8]_i_1_n_5 ),
        .Q(frame0_raddr_reg[10]),
        .R(clear));
  FDRE \frame0_raddr_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[8]_i_1_n_4 ),
        .Q(frame0_raddr_reg[11]),
        .R(clear));
  FDRE \frame0_raddr_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[12]_i_1_n_7 ),
        .Q(frame0_raddr_reg[12]),
        .R(clear));
  CARRY4 \frame0_raddr_reg[12]_i_1 
       (.CI(\frame0_raddr_reg[8]_i_1_n_0 ),
        .CO({\frame0_raddr_reg[12]_i_1_n_0 ,\frame0_raddr_reg[12]_i_1_n_1 ,\frame0_raddr_reg[12]_i_1_n_2 ,\frame0_raddr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame0_raddr_reg[12]_i_1_n_4 ,\frame0_raddr_reg[12]_i_1_n_5 ,\frame0_raddr_reg[12]_i_1_n_6 ,\frame0_raddr_reg[12]_i_1_n_7 }),
        .S({\frame0_raddr[12]_i_2_n_0 ,\frame0_raddr[12]_i_3_n_0 ,\frame0_raddr[12]_i_4_n_0 ,\frame0_raddr[12]_i_5_n_0 }));
  CARRY4 \frame0_raddr_reg[12]_i_6 
       (.CI(\frame0_raddr_reg[8]_i_6_n_0 ),
        .CO({\frame0_raddr_reg[12]_i_6_n_0 ,\frame0_raddr_reg[12]_i_6_n_1 ,\frame0_raddr_reg[12]_i_6_n_2 ,\frame0_raddr_reg[12]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame0_raddr0[16:13]),
        .S({\frame0_raddr[12]_i_7_n_0 ,\frame0_raddr[12]_i_8_n_0 ,\frame0_raddr[12]_i_9_n_0 ,\frame0_raddr[12]_i_10_n_0 }));
  FDRE \frame0_raddr_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[12]_i_1_n_6 ),
        .Q(frame0_raddr_reg[13]),
        .R(clear));
  FDRE \frame0_raddr_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[12]_i_1_n_5 ),
        .Q(frame0_raddr_reg[14]),
        .R(clear));
  FDRE \frame0_raddr_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[12]_i_1_n_4 ),
        .Q(frame0_raddr_reg[15]),
        .R(clear));
  FDRE \frame0_raddr_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[16]_i_1_n_7 ),
        .Q(frame0_raddr_reg[16]),
        .R(clear));
  CARRY4 \frame0_raddr_reg[16]_i_1 
       (.CI(\frame0_raddr_reg[12]_i_1_n_0 ),
        .CO({\NLW_frame0_raddr_reg[16]_i_1_CO_UNCONNECTED [3:2],\frame0_raddr_reg[16]_i_1_n_2 ,\frame0_raddr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame0_raddr_reg[16]_i_1_O_UNCONNECTED [3],\frame0_raddr_reg[16]_i_1_n_5 ,\frame0_raddr_reg[16]_i_1_n_6 ,\frame0_raddr_reg[16]_i_1_n_7 }),
        .S({1'b0,\frame0_raddr[16]_i_2_n_0 ,\frame0_raddr[16]_i_3_n_0 ,\frame0_raddr[16]_i_4_n_0 }));
  CARRY4 \frame0_raddr_reg[16]_i_5 
       (.CI(\frame0_raddr_reg[12]_i_6_n_0 ),
        .CO({\NLW_frame0_raddr_reg[16]_i_5_CO_UNCONNECTED [3:1],\frame0_raddr_reg[16]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame0_raddr_reg[16]_i_5_O_UNCONNECTED [3:2],frame0_raddr0[18:17]}),
        .S({1'b0,1'b0,\frame0_raddr[16]_i_6_n_0 ,\frame0_raddr[16]_i_7_n_0 }));
  FDRE \frame0_raddr_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[16]_i_1_n_6 ),
        .Q(frame0_raddr_reg[17]),
        .R(clear));
  FDRE \frame0_raddr_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[16]_i_1_n_5 ),
        .Q(frame0_raddr_reg[18]),
        .R(clear));
  FDRE \frame0_raddr_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[0]_i_2_n_6 ),
        .Q(frame0_raddr_reg[1]),
        .R(clear));
  FDRE \frame0_raddr_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[0]_i_2_n_5 ),
        .Q(frame0_raddr_reg[2]),
        .R(clear));
  FDRE \frame0_raddr_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[0]_i_2_n_4 ),
        .Q(frame0_raddr_reg[3]),
        .R(clear));
  FDRE \frame0_raddr_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[4]_i_1_n_7 ),
        .Q(frame0_raddr_reg[4]),
        .R(clear));
  CARRY4 \frame0_raddr_reg[4]_i_1 
       (.CI(\frame0_raddr_reg[0]_i_2_n_0 ),
        .CO({\frame0_raddr_reg[4]_i_1_n_0 ,\frame0_raddr_reg[4]_i_1_n_1 ,\frame0_raddr_reg[4]_i_1_n_2 ,\frame0_raddr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame0_raddr_reg[4]_i_1_n_4 ,\frame0_raddr_reg[4]_i_1_n_5 ,\frame0_raddr_reg[4]_i_1_n_6 ,\frame0_raddr_reg[4]_i_1_n_7 }),
        .S({\frame0_raddr[4]_i_2_n_0 ,\frame0_raddr[4]_i_3_n_0 ,\frame0_raddr[4]_i_4_n_0 ,\frame0_raddr[4]_i_5_n_0 }));
  CARRY4 \frame0_raddr_reg[4]_i_6 
       (.CI(\frame0_raddr_reg[0]_i_16_n_0 ),
        .CO({\frame0_raddr_reg[4]_i_6_n_0 ,\frame0_raddr_reg[4]_i_6_n_1 ,\frame0_raddr_reg[4]_i_6_n_2 ,\frame0_raddr_reg[4]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame0_raddr0[8:5]),
        .S({\frame0_raddr[4]_i_7_n_0 ,\frame0_raddr[4]_i_8_n_0 ,\frame0_raddr[4]_i_9_n_0 ,\frame0_raddr[4]_i_10_n_0 }));
  FDRE \frame0_raddr_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[4]_i_1_n_6 ),
        .Q(frame0_raddr_reg[5]),
        .R(clear));
  FDRE \frame0_raddr_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[4]_i_1_n_5 ),
        .Q(frame0_raddr_reg[6]),
        .R(clear));
  FDRE \frame0_raddr_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[4]_i_1_n_4 ),
        .Q(frame0_raddr_reg[7]),
        .R(clear));
  FDRE \frame0_raddr_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[8]_i_1_n_7 ),
        .Q(frame0_raddr_reg[8]),
        .R(clear));
  CARRY4 \frame0_raddr_reg[8]_i_1 
       (.CI(\frame0_raddr_reg[4]_i_1_n_0 ),
        .CO({\frame0_raddr_reg[8]_i_1_n_0 ,\frame0_raddr_reg[8]_i_1_n_1 ,\frame0_raddr_reg[8]_i_1_n_2 ,\frame0_raddr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame0_raddr_reg[8]_i_1_n_4 ,\frame0_raddr_reg[8]_i_1_n_5 ,\frame0_raddr_reg[8]_i_1_n_6 ,\frame0_raddr_reg[8]_i_1_n_7 }),
        .S({\frame0_raddr[8]_i_2_n_0 ,\frame0_raddr[8]_i_3_n_0 ,\frame0_raddr[8]_i_4_n_0 ,\frame0_raddr[8]_i_5_n_0 }));
  CARRY4 \frame0_raddr_reg[8]_i_6 
       (.CI(\frame0_raddr_reg[4]_i_6_n_0 ),
        .CO({\frame0_raddr_reg[8]_i_6_n_0 ,\frame0_raddr_reg[8]_i_6_n_1 ,\frame0_raddr_reg[8]_i_6_n_2 ,\frame0_raddr_reg[8]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(frame0_raddr0[12:9]),
        .S({\frame0_raddr[8]_i_7_n_0 ,\frame0_raddr[8]_i_8_n_0 ,\frame0_raddr[8]_i_9_n_0 ,\frame0_raddr[8]_i_10_n_0 }));
  FDRE \frame0_raddr_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\frame0_raddr[0]_i_1_n_0 ),
        .D(\frame0_raddr_reg[8]_i_1_n_6 ),
        .Q(frame0_raddr_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'h08)) 
    \frame0_waddr[18]_i_1 
       (.I0(frame0_raddr_reg[0]),
        .I1(s00_axis_aresetn),
        .I2(\frame0_waddr_counter[18]_i_3_n_0 ),
        .O(\frame0_waddr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD500)) 
    \frame0_waddr[18]_i_2 
       (.I0(\frame0_waddr_counter[18]_i_3_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_tready),
        .I3(s00_axis_aresetn),
        .O(\frame0_waddr[18]_i_2_n_0 ));
  CARRY4 \frame0_waddr_counter0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\frame0_waddr_counter0_inferred__1/i__carry_n_0 ,\frame0_waddr_counter0_inferred__1/i__carry_n_1 ,\frame0_waddr_counter0_inferred__1/i__carry_n_2 ,\frame0_waddr_counter0_inferred__1/i__carry_n_3 }),
        .CYINIT(frame0_waddr_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \frame0_waddr_counter0_inferred__1/i__carry__0 
       (.CI(\frame0_waddr_counter0_inferred__1/i__carry_n_0 ),
        .CO({\frame0_waddr_counter0_inferred__1/i__carry__0_n_0 ,\frame0_waddr_counter0_inferred__1/i__carry__0_n_1 ,\frame0_waddr_counter0_inferred__1/i__carry__0_n_2 ,\frame0_waddr_counter0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \frame0_waddr_counter0_inferred__1/i__carry__1 
       (.CI(\frame0_waddr_counter0_inferred__1/i__carry__0_n_0 ),
        .CO({\frame0_waddr_counter0_inferred__1/i__carry__1_n_0 ,\frame0_waddr_counter0_inferred__1/i__carry__1_n_1 ,\frame0_waddr_counter0_inferred__1/i__carry__1_n_2 ,\frame0_waddr_counter0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \frame0_waddr_counter0_inferred__1/i__carry__2 
       (.CI(\frame0_waddr_counter0_inferred__1/i__carry__1_n_0 ),
        .CO({\frame0_waddr_counter0_inferred__1/i__carry__2_n_0 ,\frame0_waddr_counter0_inferred__1/i__carry__2_n_1 ,\frame0_waddr_counter0_inferred__1/i__carry__2_n_2 ,\frame0_waddr_counter0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \frame0_waddr_counter0_inferred__1/i__carry__3 
       (.CI(\frame0_waddr_counter0_inferred__1/i__carry__2_n_0 ),
        .CO({\NLW_frame0_waddr_counter0_inferred__1/i__carry__3_CO_UNCONNECTED [3:1],\frame0_waddr_counter0_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_frame0_waddr_counter0_inferred__1/i__carry__3_O_UNCONNECTED [3:2],data0[18:17]}),
        .S({1'b0,1'b0,i__carry__3_i_1_n_0,i__carry__3_i_2_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \frame0_waddr_counter[0]_i_1 
       (.I0(store_new_data_states0),
        .I1(frame0_waddr_counter[0]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[10]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[10]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[11]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[11]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[12]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[12]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[13]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[13]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[14]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[14]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[15]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[15]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[16]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[16]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[16]));
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[17]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[17]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[17]));
  LUT4 #(
    .INIT(16'hFFD5)) 
    \frame0_waddr_counter[18]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_3_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_tready),
        .I3(store_new_data_states0),
        .O(\frame0_waddr_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \frame0_waddr_counter[18]_i_10 
       (.I0(frame0_raddr_reg[2]),
        .I1(frame0_raddr_reg[3]),
        .I2(frame0_raddr_reg[1]),
        .O(\frame0_waddr_counter[18]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frame0_waddr_counter[18]_i_11 
       (.I0(\frame0_waddr_reg_n_0_[8] ),
        .I1(\frame0_waddr_reg_n_0_[3] ),
        .I2(\frame0_waddr_reg_n_0_[11] ),
        .I3(\frame0_waddr_reg_n_0_[5] ),
        .O(\frame0_waddr_counter[18]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \frame0_waddr_counter[18]_i_12 
       (.I0(\frame0_waddr_reg_n_0_[4] ),
        .I1(\frame0_waddr_reg_n_0_[2] ),
        .I2(\frame0_waddr_reg_n_0_[9] ),
        .I3(store_new_data_states),
        .O(\frame0_waddr_counter[18]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \frame0_waddr_counter[18]_i_13 
       (.I0(\frame0_waddr_reg_n_0_[14] ),
        .I1(\frame0_waddr_reg_n_0_[12] ),
        .I2(\frame0_waddr_reg_n_0_[15] ),
        .I3(\frame0_waddr_reg_n_0_[7] ),
        .O(\frame0_waddr_counter[18]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \frame0_waddr_counter[18]_i_14 
       (.I0(\frame0_waddr_reg_n_0_[1] ),
        .I1(\frame0_waddr_reg_n_0_[17] ),
        .I2(\frame0_waddr_reg_n_0_[18] ),
        .I3(\frame0_waddr_reg_n_0_[0] ),
        .O(\frame0_waddr_counter[18]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \frame0_waddr_counter[18]_i_15 
       (.I0(\frame0_waddr_reg_n_0_[13] ),
        .I1(\frame0_waddr_reg_n_0_[10] ),
        .I2(\frame0_waddr_reg_n_0_[6] ),
        .I3(\frame0_waddr_reg_n_0_[16] ),
        .O(\frame0_waddr_counter[18]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frame0_waddr_counter[18]_i_16 
       (.I0(\frame0_waddr_reg_n_0_[10] ),
        .I1(\frame0_waddr_reg_n_0_[5] ),
        .I2(\frame0_waddr_reg_n_0_[15] ),
        .I3(\frame0_waddr_reg_n_0_[1] ),
        .O(\frame0_waddr_counter[18]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frame0_waddr_counter[18]_i_17 
       (.I0(\frame0_waddr_reg_n_0_[9] ),
        .I1(\frame0_waddr_reg_n_0_[6] ),
        .I2(\frame0_waddr_reg_n_0_[13] ),
        .I3(\frame0_waddr_reg_n_0_[0] ),
        .O(\frame0_waddr_counter[18]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \frame0_waddr_counter[18]_i_18 
       (.I0(\frame0_waddr_reg_n_0_[16] ),
        .I1(\frame0_waddr_reg_n_0_[12] ),
        .I2(\frame0_waddr_reg_n_0_[18] ),
        .I3(\frame0_waddr_reg_n_0_[17] ),
        .O(\frame0_waddr_counter[18]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \frame0_waddr_counter[18]_i_19 
       (.I0(\frame0_waddr_reg_n_0_[3] ),
        .I1(\frame0_waddr_reg_n_0_[7] ),
        .I2(\frame0_waddr_reg_n_0_[4] ),
        .O(\frame0_waddr_counter[18]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[18]_i_2 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[18]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[18]));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \frame0_waddr_counter[18]_i_20 
       (.I0(\frame0_waddr_reg_n_0_[8] ),
        .I1(\frame0_waddr_reg_n_0_[14] ),
        .I2(\frame0_waddr_reg_n_0_[11] ),
        .I3(\frame0_waddr_reg_n_0_[2] ),
        .O(\frame0_waddr_counter[18]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \frame0_waddr_counter[18]_i_21 
       (.I0(frame0_raddr_reg[16]),
        .I1(frame0_raddr_reg[17]),
        .I2(frame0_raddr_reg[15]),
        .I3(frame0_raddr_reg[14]),
        .O(\frame0_waddr_counter[18]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF7FFFF)) 
    \frame0_waddr_counter[18]_i_3 
       (.I0(\frame0_waddr_counter[18]_i_7_n_0 ),
        .I1(\frame0_raddr[0]_i_3_n_0 ),
        .I2(\frame0_waddr_counter[18]_i_8_n_0 ),
        .I3(frame0_raddr_reg[16]),
        .I4(\frame0_waddr_counter[18]_i_9_n_0 ),
        .I5(\frame0_waddr_counter[18]_i_10_n_0 ),
        .O(\frame0_waddr_counter[18]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \frame0_waddr_counter[18]_i_4 
       (.I0(\frame0_waddr_counter[18]_i_11_n_0 ),
        .I1(\frame0_waddr_counter[18]_i_12_n_0 ),
        .I2(\frame0_waddr_counter[18]_i_13_n_0 ),
        .I3(\frame0_waddr_counter[18]_i_14_n_0 ),
        .I4(\frame0_waddr_counter[18]_i_15_n_0 ),
        .O(store_new_data_states0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \frame0_waddr_counter[18]_i_5 
       (.I0(\frame0_waddr_counter[18]_i_16_n_0 ),
        .I1(\frame0_waddr_counter[18]_i_17_n_0 ),
        .I2(\frame0_waddr_counter[18]_i_18_n_0 ),
        .I3(\frame0_waddr_counter[18]_i_19_n_0 ),
        .I4(\frame0_waddr_counter[18]_i_20_n_0 ),
        .I5(store_new_data_states),
        .O(\frame0_waddr_counter[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \frame0_waddr_counter[18]_i_6 
       (.I0(frame0_raddr_reg[0]),
        .I1(\frame0_waddr_counter[18]_i_10_n_0 ),
        .I2(\frame0_waddr_counter[18]_i_21_n_0 ),
        .I3(\frame0_waddr_counter[18]_i_8_n_0 ),
        .I4(\frame0_raddr[0]_i_3_n_0 ),
        .I5(\frame0_waddr_counter[18]_i_7_n_0 ),
        .O(\frame0_waddr_counter[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \frame0_waddr_counter[18]_i_7 
       (.I0(store_new_data_states),
        .I1(frame0_raddr_reg[9]),
        .I2(frame0_raddr_reg[18]),
        .I3(frame0_raddr_reg[12]),
        .I4(frame0_raddr_reg[13]),
        .O(\frame0_waddr_counter[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \frame0_waddr_counter[18]_i_8 
       (.I0(frame0_raddr_reg[6]),
        .I1(frame0_raddr_reg[5]),
        .I2(frame0_raddr_reg[4]),
        .O(\frame0_waddr_counter[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[18]_i_9 
       (.I0(frame0_raddr_reg[14]),
        .I1(frame0_raddr_reg[15]),
        .I2(frame0_raddr_reg[17]),
        .O(\frame0_waddr_counter[18]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[1]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[1]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[2]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[2]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[3]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[3]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[4]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[4]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[5]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[5]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[6]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[6]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[7]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[7]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[8]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[8]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \frame0_waddr_counter[9]_i_1 
       (.I0(\frame0_waddr_counter[18]_i_5_n_0 ),
        .I1(data0[9]),
        .I2(\frame0_waddr_counter[18]_i_6_n_0 ),
        .O(p_2_in[9]));
  FDRE \frame0_waddr_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(frame0_waddr_counter[0]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(frame0_waddr_counter[10]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(frame0_waddr_counter[11]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(frame0_waddr_counter[12]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(frame0_waddr_counter[13]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(frame0_waddr_counter[14]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(frame0_waddr_counter[15]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(frame0_waddr_counter[16]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(frame0_waddr_counter[17]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(frame0_waddr_counter[18]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(frame0_waddr_counter[1]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(frame0_waddr_counter[2]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(frame0_waddr_counter[3]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(frame0_waddr_counter[4]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(frame0_waddr_counter[5]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(frame0_waddr_counter[6]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(frame0_waddr_counter[7]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(frame0_waddr_counter[8]),
        .R(clear));
  FDRE \frame0_waddr_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr_counter[18]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(frame0_waddr_counter[9]),
        .R(clear));
  FDRE \frame0_waddr_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[0]),
        .Q(\frame0_waddr_reg_n_0_[0] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[10]),
        .Q(\frame0_waddr_reg_n_0_[10] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[11]),
        .Q(\frame0_waddr_reg_n_0_[11] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[12]),
        .Q(\frame0_waddr_reg_n_0_[12] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[13]),
        .Q(\frame0_waddr_reg_n_0_[13] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[14]),
        .Q(\frame0_waddr_reg_n_0_[14] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[15]),
        .Q(\frame0_waddr_reg_n_0_[15] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[16]),
        .Q(\frame0_waddr_reg_n_0_[16] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[17]),
        .Q(\frame0_waddr_reg_n_0_[17] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[18]),
        .Q(\frame0_waddr_reg_n_0_[18] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[1]),
        .Q(\frame0_waddr_reg_n_0_[1] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[2]),
        .Q(\frame0_waddr_reg_n_0_[2] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[3]),
        .Q(\frame0_waddr_reg_n_0_[3] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[4]),
        .Q(\frame0_waddr_reg_n_0_[4] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[5]),
        .Q(\frame0_waddr_reg_n_0_[5] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[6]),
        .Q(\frame0_waddr_reg_n_0_[6] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[7]),
        .Q(\frame0_waddr_reg_n_0_[7] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[8]),
        .Q(\frame0_waddr_reg_n_0_[8] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  FDRE \frame0_waddr_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\frame0_waddr[18]_i_2_n_0 ),
        .D(frame0_waddr_counter[9]),
        .Q(\frame0_waddr_reg_n_0_[9] ),
        .R(\frame0_waddr[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[11]_i_2 
       (.I0(frame_counter_w[11]),
        .O(\frame_counter[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[11]_i_3 
       (.I0(frame_counter_w[10]),
        .O(\frame_counter[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[11]_i_4 
       (.I0(frame_counter_w[9]),
        .O(\frame_counter[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[11]_i_5 
       (.I0(frame_counter_w[8]),
        .O(\frame_counter[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \frame_counter[15]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(s00_axis_tuser),
        .O(frame_counter0));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[15]_i_3 
       (.I0(frame_counter_w[15]),
        .O(\frame_counter[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[15]_i_4 
       (.I0(frame_counter_w[14]),
        .O(\frame_counter[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[15]_i_5 
       (.I0(frame_counter_w[13]),
        .O(\frame_counter[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[15]_i_6 
       (.I0(frame_counter_w[12]),
        .O(\frame_counter[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[3]_i_2 
       (.I0(frame_counter_w[3]),
        .O(\frame_counter[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[3]_i_3 
       (.I0(frame_counter_w[2]),
        .O(\frame_counter[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[3]_i_4 
       (.I0(frame_counter_w[1]),
        .O(\frame_counter[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_counter[3]_i_5 
       (.I0(frame_counter_w[0]),
        .O(\frame_counter[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[7]_i_2 
       (.I0(frame_counter_w[7]),
        .O(\frame_counter[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[7]_i_3 
       (.I0(frame_counter_w[6]),
        .O(\frame_counter[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[7]_i_4 
       (.I0(frame_counter_w[5]),
        .O(\frame_counter[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_counter[7]_i_5 
       (.I0(frame_counter_w[4]),
        .O(\frame_counter[7]_i_5_n_0 ));
  FDRE \frame_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[3]_i_1_n_7 ),
        .Q(frame_counter_w[0]),
        .R(clear));
  FDRE \frame_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[11]_i_1_n_5 ),
        .Q(frame_counter_w[10]),
        .R(clear));
  FDRE \frame_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[11]_i_1_n_4 ),
        .Q(frame_counter_w[11]),
        .R(clear));
  CARRY4 \frame_counter_reg[11]_i_1 
       (.CI(\frame_counter_reg[7]_i_1_n_0 ),
        .CO({\frame_counter_reg[11]_i_1_n_0 ,\frame_counter_reg[11]_i_1_n_1 ,\frame_counter_reg[11]_i_1_n_2 ,\frame_counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[11]_i_1_n_4 ,\frame_counter_reg[11]_i_1_n_5 ,\frame_counter_reg[11]_i_1_n_6 ,\frame_counter_reg[11]_i_1_n_7 }),
        .S({\frame_counter[11]_i_2_n_0 ,\frame_counter[11]_i_3_n_0 ,\frame_counter[11]_i_4_n_0 ,\frame_counter[11]_i_5_n_0 }));
  FDRE \frame_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[15]_i_2_n_7 ),
        .Q(frame_counter_w[12]),
        .R(clear));
  FDRE \frame_counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[15]_i_2_n_6 ),
        .Q(frame_counter_w[13]),
        .R(clear));
  FDRE \frame_counter_reg[14] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[15]_i_2_n_5 ),
        .Q(frame_counter_w[14]),
        .R(clear));
  FDRE \frame_counter_reg[15] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[15]_i_2_n_4 ),
        .Q(frame_counter_w[15]),
        .R(clear));
  CARRY4 \frame_counter_reg[15]_i_2 
       (.CI(\frame_counter_reg[11]_i_1_n_0 ),
        .CO({\NLW_frame_counter_reg[15]_i_2_CO_UNCONNECTED [3],\frame_counter_reg[15]_i_2_n_1 ,\frame_counter_reg[15]_i_2_n_2 ,\frame_counter_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[15]_i_2_n_4 ,\frame_counter_reg[15]_i_2_n_5 ,\frame_counter_reg[15]_i_2_n_6 ,\frame_counter_reg[15]_i_2_n_7 }),
        .S({\frame_counter[15]_i_3_n_0 ,\frame_counter[15]_i_4_n_0 ,\frame_counter[15]_i_5_n_0 ,\frame_counter[15]_i_6_n_0 }));
  FDRE \frame_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[3]_i_1_n_6 ),
        .Q(frame_counter_w[1]),
        .R(clear));
  FDRE \frame_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[3]_i_1_n_5 ),
        .Q(frame_counter_w[2]),
        .R(clear));
  FDRE \frame_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[3]_i_1_n_4 ),
        .Q(frame_counter_w[3]),
        .R(clear));
  CARRY4 \frame_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\frame_counter_reg[3]_i_1_n_0 ,\frame_counter_reg[3]_i_1_n_1 ,\frame_counter_reg[3]_i_1_n_2 ,\frame_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_counter_reg[3]_i_1_n_4 ,\frame_counter_reg[3]_i_1_n_5 ,\frame_counter_reg[3]_i_1_n_6 ,\frame_counter_reg[3]_i_1_n_7 }),
        .S({\frame_counter[3]_i_2_n_0 ,\frame_counter[3]_i_3_n_0 ,\frame_counter[3]_i_4_n_0 ,\frame_counter[3]_i_5_n_0 }));
  FDRE \frame_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[7]_i_1_n_7 ),
        .Q(frame_counter_w[4]),
        .R(clear));
  FDRE \frame_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[7]_i_1_n_6 ),
        .Q(frame_counter_w[5]),
        .R(clear));
  FDRE \frame_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[7]_i_1_n_5 ),
        .Q(frame_counter_w[6]),
        .R(clear));
  FDRE \frame_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[7]_i_1_n_4 ),
        .Q(frame_counter_w[7]),
        .R(clear));
  CARRY4 \frame_counter_reg[7]_i_1 
       (.CI(\frame_counter_reg[3]_i_1_n_0 ),
        .CO({\frame_counter_reg[7]_i_1_n_0 ,\frame_counter_reg[7]_i_1_n_1 ,\frame_counter_reg[7]_i_1_n_2 ,\frame_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_counter_reg[7]_i_1_n_4 ,\frame_counter_reg[7]_i_1_n_5 ,\frame_counter_reg[7]_i_1_n_6 ,\frame_counter_reg[7]_i_1_n_7 }),
        .S({\frame_counter[7]_i_2_n_0 ,\frame_counter[7]_i_3_n_0 ,\frame_counter[7]_i_4_n_0 ,\frame_counter[7]_i_5_n_0 }));
  FDRE \frame_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[11]_i_1_n_7 ),
        .Q(frame_counter_w[8]),
        .R(clear));
  FDRE \frame_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(frame_counter0),
        .D(\frame_counter_reg[11]_i_1_n_6 ),
        .Q(frame_counter_w[9]),
        .R(clear));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[11]_i_2 
       (.I0(frame_wait_w[11]),
        .O(\frame_wait[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[11]_i_3 
       (.I0(frame_wait_w[10]),
        .O(\frame_wait[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[11]_i_4 
       (.I0(frame_wait_w[9]),
        .O(\frame_wait[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[11]_i_5 
       (.I0(frame_wait_w[8]),
        .O(\frame_wait[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[15]_i_2 
       (.I0(frame_wait_w[15]),
        .O(\frame_wait[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[15]_i_3 
       (.I0(frame_wait_w[14]),
        .O(\frame_wait[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[15]_i_4 
       (.I0(frame_wait_w[13]),
        .O(\frame_wait[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[15]_i_5 
       (.I0(frame_wait_w[12]),
        .O(\frame_wait[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[19]_i_2 
       (.I0(frame_wait_w[19]),
        .O(\frame_wait[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[19]_i_3 
       (.I0(frame_wait_w[18]),
        .O(\frame_wait[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[19]_i_4 
       (.I0(frame_wait_w[17]),
        .O(\frame_wait[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[19]_i_5 
       (.I0(frame_wait_w[16]),
        .O(\frame_wait[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[23]_i_2 
       (.I0(frame_wait_w[23]),
        .O(\frame_wait[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[23]_i_3 
       (.I0(frame_wait_w[22]),
        .O(\frame_wait[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[23]_i_4 
       (.I0(frame_wait_w[21]),
        .O(\frame_wait[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[23]_i_5 
       (.I0(frame_wait_w[20]),
        .O(\frame_wait[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[27]_i_2 
       (.I0(frame_wait_w[27]),
        .O(\frame_wait[27]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[27]_i_3 
       (.I0(frame_wait_w[26]),
        .O(\frame_wait[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[27]_i_4 
       (.I0(frame_wait_w[25]),
        .O(\frame_wait[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[27]_i_5 
       (.I0(frame_wait_w[24]),
        .O(\frame_wait[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \frame_wait[31]_i_1 
       (.I0(\frame_wait[31]_i_4_n_0 ),
        .I1(\frame_wait[31]_i_5_n_0 ),
        .I2(\frame_wait[31]_i_6_n_0 ),
        .I3(line_counter_w[14]),
        .I4(line_counter_w[15]),
        .I5(line_counter_w[13]),
        .O(\frame_wait[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[31]_i_10 
       (.I0(frame_wait_w[30]),
        .O(\frame_wait[31]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[31]_i_11 
       (.I0(frame_wait_w[29]),
        .O(\frame_wait[31]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[31]_i_12 
       (.I0(frame_wait_w[28]),
        .O(\frame_wait[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \frame_wait[31]_i_2 
       (.I0(\frame_wait[31]_i_4_n_0 ),
        .I1(\frame_wait[31]_i_7_n_0 ),
        .I2(line_counter_w[2]),
        .I3(line_counter_w[1]),
        .I4(s00_axis_tvalid),
        .I5(\frame_wait[31]_i_8_n_0 ),
        .O(\frame_wait[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \frame_wait[31]_i_4 
       (.I0(line_counter_w[12]),
        .I1(line_counter_w[0]),
        .I2(line_counter_w[9]),
        .I3(line_counter_w[11]),
        .I4(line_counter_w[10]),
        .I5(line_counter_w[7]),
        .O(\frame_wait[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \frame_wait[31]_i_5 
       (.I0(line_counter_w[1]),
        .I1(line_counter_w[8]),
        .I2(line_counter_w[4]),
        .I3(s00_axis_aresetn),
        .O(\frame_wait[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \frame_wait[31]_i_6 
       (.I0(line_counter_w[2]),
        .I1(line_counter_w[6]),
        .I2(line_counter_w[3]),
        .I3(line_counter_w[5]),
        .O(\frame_wait[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \frame_wait[31]_i_7 
       (.I0(line_counter_w[14]),
        .I1(line_counter_w[15]),
        .I2(line_counter_w[13]),
        .O(\frame_wait[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \frame_wait[31]_i_8 
       (.I0(line_counter_w[3]),
        .I1(line_counter_w[4]),
        .I2(s00_axis_aresetn),
        .I3(line_counter_w[5]),
        .I4(line_counter_w[6]),
        .I5(line_counter_w[8]),
        .O(\frame_wait[31]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[31]_i_9 
       (.I0(frame_wait_w[31]),
        .O(\frame_wait[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[3]_i_2 
       (.I0(frame_wait_w[3]),
        .O(\frame_wait[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[3]_i_3 
       (.I0(frame_wait_w[2]),
        .O(\frame_wait[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[3]_i_4 
       (.I0(frame_wait_w[1]),
        .O(\frame_wait[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \frame_wait[3]_i_5 
       (.I0(frame_wait_w[0]),
        .O(\frame_wait[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[7]_i_2 
       (.I0(frame_wait_w[7]),
        .O(\frame_wait[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[7]_i_3 
       (.I0(frame_wait_w[6]),
        .O(\frame_wait[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[7]_i_4 
       (.I0(frame_wait_w[5]),
        .O(\frame_wait[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \frame_wait[7]_i_5 
       (.I0(frame_wait_w[4]),
        .O(\frame_wait[7]_i_5_n_0 ));
  FDRE \frame_wait_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[3]_i_1_n_7 ),
        .Q(frame_wait_w[0]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[11]_i_1_n_5 ),
        .Q(frame_wait_w[10]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[11]_i_1_n_4 ),
        .Q(frame_wait_w[11]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[11]_i_1 
       (.CI(\frame_wait_reg[7]_i_1_n_0 ),
        .CO({\frame_wait_reg[11]_i_1_n_0 ,\frame_wait_reg[11]_i_1_n_1 ,\frame_wait_reg[11]_i_1_n_2 ,\frame_wait_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[11]_i_1_n_4 ,\frame_wait_reg[11]_i_1_n_5 ,\frame_wait_reg[11]_i_1_n_6 ,\frame_wait_reg[11]_i_1_n_7 }),
        .S({\frame_wait[11]_i_2_n_0 ,\frame_wait[11]_i_3_n_0 ,\frame_wait[11]_i_4_n_0 ,\frame_wait[11]_i_5_n_0 }));
  FDRE \frame_wait_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[15]_i_1_n_7 ),
        .Q(frame_wait_w[12]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[15]_i_1_n_6 ),
        .Q(frame_wait_w[13]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[15]_i_1_n_5 ),
        .Q(frame_wait_w[14]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[15]_i_1_n_4 ),
        .Q(frame_wait_w[15]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[15]_i_1 
       (.CI(\frame_wait_reg[11]_i_1_n_0 ),
        .CO({\frame_wait_reg[15]_i_1_n_0 ,\frame_wait_reg[15]_i_1_n_1 ,\frame_wait_reg[15]_i_1_n_2 ,\frame_wait_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[15]_i_1_n_4 ,\frame_wait_reg[15]_i_1_n_5 ,\frame_wait_reg[15]_i_1_n_6 ,\frame_wait_reg[15]_i_1_n_7 }),
        .S({\frame_wait[15]_i_2_n_0 ,\frame_wait[15]_i_3_n_0 ,\frame_wait[15]_i_4_n_0 ,\frame_wait[15]_i_5_n_0 }));
  FDRE \frame_wait_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[19]_i_1_n_7 ),
        .Q(frame_wait_w[16]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[19]_i_1_n_6 ),
        .Q(frame_wait_w[17]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[19]_i_1_n_5 ),
        .Q(frame_wait_w[18]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[19]_i_1_n_4 ),
        .Q(frame_wait_w[19]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[19]_i_1 
       (.CI(\frame_wait_reg[15]_i_1_n_0 ),
        .CO({\frame_wait_reg[19]_i_1_n_0 ,\frame_wait_reg[19]_i_1_n_1 ,\frame_wait_reg[19]_i_1_n_2 ,\frame_wait_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[19]_i_1_n_4 ,\frame_wait_reg[19]_i_1_n_5 ,\frame_wait_reg[19]_i_1_n_6 ,\frame_wait_reg[19]_i_1_n_7 }),
        .S({\frame_wait[19]_i_2_n_0 ,\frame_wait[19]_i_3_n_0 ,\frame_wait[19]_i_4_n_0 ,\frame_wait[19]_i_5_n_0 }));
  FDRE \frame_wait_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[3]_i_1_n_6 ),
        .Q(frame_wait_w[1]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[23]_i_1_n_7 ),
        .Q(frame_wait_w[20]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[23]_i_1_n_6 ),
        .Q(frame_wait_w[21]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[23]_i_1_n_5 ),
        .Q(frame_wait_w[22]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[23]_i_1_n_4 ),
        .Q(frame_wait_w[23]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[23]_i_1 
       (.CI(\frame_wait_reg[19]_i_1_n_0 ),
        .CO({\frame_wait_reg[23]_i_1_n_0 ,\frame_wait_reg[23]_i_1_n_1 ,\frame_wait_reg[23]_i_1_n_2 ,\frame_wait_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[23]_i_1_n_4 ,\frame_wait_reg[23]_i_1_n_5 ,\frame_wait_reg[23]_i_1_n_6 ,\frame_wait_reg[23]_i_1_n_7 }),
        .S({\frame_wait[23]_i_2_n_0 ,\frame_wait[23]_i_3_n_0 ,\frame_wait[23]_i_4_n_0 ,\frame_wait[23]_i_5_n_0 }));
  FDRE \frame_wait_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[27]_i_1_n_7 ),
        .Q(frame_wait_w[24]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[27]_i_1_n_6 ),
        .Q(frame_wait_w[25]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[27]_i_1_n_5 ),
        .Q(frame_wait_w[26]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[27]_i_1_n_4 ),
        .Q(frame_wait_w[27]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[27]_i_1 
       (.CI(\frame_wait_reg[23]_i_1_n_0 ),
        .CO({\frame_wait_reg[27]_i_1_n_0 ,\frame_wait_reg[27]_i_1_n_1 ,\frame_wait_reg[27]_i_1_n_2 ,\frame_wait_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[27]_i_1_n_4 ,\frame_wait_reg[27]_i_1_n_5 ,\frame_wait_reg[27]_i_1_n_6 ,\frame_wait_reg[27]_i_1_n_7 }),
        .S({\frame_wait[27]_i_2_n_0 ,\frame_wait[27]_i_3_n_0 ,\frame_wait[27]_i_4_n_0 ,\frame_wait[27]_i_5_n_0 }));
  FDRE \frame_wait_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[31]_i_3_n_7 ),
        .Q(frame_wait_w[28]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[31]_i_3_n_6 ),
        .Q(frame_wait_w[29]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[3]_i_1_n_5 ),
        .Q(frame_wait_w[2]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[31]_i_3_n_5 ),
        .Q(frame_wait_w[30]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[31]_i_3_n_4 ),
        .Q(frame_wait_w[31]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[31]_i_3 
       (.CI(\frame_wait_reg[27]_i_1_n_0 ),
        .CO({\NLW_frame_wait_reg[31]_i_3_CO_UNCONNECTED [3],\frame_wait_reg[31]_i_3_n_1 ,\frame_wait_reg[31]_i_3_n_2 ,\frame_wait_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[31]_i_3_n_4 ,\frame_wait_reg[31]_i_3_n_5 ,\frame_wait_reg[31]_i_3_n_6 ,\frame_wait_reg[31]_i_3_n_7 }),
        .S({\frame_wait[31]_i_9_n_0 ,\frame_wait[31]_i_10_n_0 ,\frame_wait[31]_i_11_n_0 ,\frame_wait[31]_i_12_n_0 }));
  FDRE \frame_wait_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[3]_i_1_n_4 ),
        .Q(frame_wait_w[3]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\frame_wait_reg[3]_i_1_n_0 ,\frame_wait_reg[3]_i_1_n_1 ,\frame_wait_reg[3]_i_1_n_2 ,\frame_wait_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\frame_wait_reg[3]_i_1_n_4 ,\frame_wait_reg[3]_i_1_n_5 ,\frame_wait_reg[3]_i_1_n_6 ,\frame_wait_reg[3]_i_1_n_7 }),
        .S({\frame_wait[3]_i_2_n_0 ,\frame_wait[3]_i_3_n_0 ,\frame_wait[3]_i_4_n_0 ,\frame_wait[3]_i_5_n_0 }));
  FDRE \frame_wait_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[7]_i_1_n_7 ),
        .Q(frame_wait_w[4]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[7]_i_1_n_6 ),
        .Q(frame_wait_w[5]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[7]_i_1_n_5 ),
        .Q(frame_wait_w[6]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[7]_i_1_n_4 ),
        .Q(frame_wait_w[7]),
        .R(\frame_wait[31]_i_1_n_0 ));
  CARRY4 \frame_wait_reg[7]_i_1 
       (.CI(\frame_wait_reg[3]_i_1_n_0 ),
        .CO({\frame_wait_reg[7]_i_1_n_0 ,\frame_wait_reg[7]_i_1_n_1 ,\frame_wait_reg[7]_i_1_n_2 ,\frame_wait_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\frame_wait_reg[7]_i_1_n_4 ,\frame_wait_reg[7]_i_1_n_5 ,\frame_wait_reg[7]_i_1_n_6 ,\frame_wait_reg[7]_i_1_n_7 }),
        .S({\frame_wait[7]_i_2_n_0 ,\frame_wait[7]_i_3_n_0 ,\frame_wait[7]_i_4_n_0 ,\frame_wait[7]_i_5_n_0 }));
  FDRE \frame_wait_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[11]_i_1_n_7 ),
        .Q(frame_wait_w[8]),
        .R(\frame_wait[31]_i_1_n_0 ));
  FDRE \frame_wait_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\frame_wait[31]_i_2_n_0 ),
        .D(\frame_wait_reg[11]_i_1_n_6 ),
        .Q(frame_wait_w[9]),
        .R(\frame_wait[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1
       (.I0(frame0_waddr_counter[8]),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2
       (.I0(frame0_waddr_counter[7]),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3
       (.I0(frame0_waddr_counter[6]),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4
       (.I0(frame0_waddr_counter[5]),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1
       (.I0(frame0_waddr_counter[12]),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2
       (.I0(frame0_waddr_counter[11]),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3
       (.I0(frame0_waddr_counter[10]),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_4
       (.I0(frame0_waddr_counter[9]),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_1
       (.I0(frame0_waddr_counter[16]),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_2
       (.I0(frame0_waddr_counter[15]),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_3
       (.I0(frame0_waddr_counter[14]),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_4
       (.I0(frame0_waddr_counter[13]),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_1
       (.I0(frame0_waddr_counter[18]),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_2
       (.I0(frame0_waddr_counter[17]),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1
       (.I0(frame0_waddr_counter[4]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2
       (.I0(frame0_waddr_counter[3]),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3
       (.I0(frame0_waddr_counter[2]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(frame0_waddr_counter[1]),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    l_e_d_INST_0
       (.I0(l_e_d_INST_0_i_1_n_0),
        .I1(l_e_d_INST_0_i_2_n_0),
        .I2(l_e_d_INST_0_i_3_n_0),
        .I3(l_e_d_INST_0_i_4_n_0),
        .O(l_e_d));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    l_e_d_INST_0_i_1
       (.I0(led_counter_reg[21]),
        .I1(led_counter_reg[22]),
        .I2(led_counter_reg[20]),
        .I3(led_counter_reg[23]),
        .I4(l_e_d_INST_0_i_5_n_0),
        .O(l_e_d_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    l_e_d_INST_0_i_2
       (.I0(led_counter_reg[27]),
        .I1(led_counter_reg[26]),
        .I2(led_counter_reg[25]),
        .I3(led_counter_reg[24]),
        .I4(l_e_d_INST_0_i_6_n_0),
        .O(l_e_d_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    l_e_d_INST_0_i_3
       (.I0(led_counter_reg[7]),
        .I1(led_counter_reg[4]),
        .I2(led_counter_reg[6]),
        .I3(led_counter_reg[5]),
        .I4(l_e_d_INST_0_i_7_n_0),
        .O(l_e_d_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    l_e_d_INST_0_i_4
       (.I0(led_counter_reg[11]),
        .I1(led_counter_reg[10]),
        .I2(led_counter_reg[9]),
        .I3(led_counter_reg[8]),
        .I4(l_e_d_INST_0_i_8_n_0),
        .O(l_e_d_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    l_e_d_INST_0_i_5
       (.I0(led_counter_reg[16]),
        .I1(led_counter_reg[17]),
        .I2(led_counter_reg[18]),
        .I3(led_counter_reg[19]),
        .O(l_e_d_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    l_e_d_INST_0_i_6
       (.I0(led_counter_reg[28]),
        .I1(led_counter_reg[29]),
        .I2(led_counter_reg[31]),
        .I3(led_counter_reg[30]),
        .O(l_e_d_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    l_e_d_INST_0_i_7
       (.I0(led_counter_reg[0]),
        .I1(led_counter_reg[1]),
        .I2(led_counter_reg[2]),
        .I3(led_counter_reg[3]),
        .O(l_e_d_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    l_e_d_INST_0_i_8
       (.I0(led_counter_reg[12]),
        .I1(led_counter_reg[13]),
        .I2(led_counter_reg[14]),
        .I3(led_counter_reg[15]),
        .O(l_e_d_INST_0_i_8_n_0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \led_counter[0]_i_1 
       (.I0(store_new_data_states),
        .I1(l_e_d_INST_0_i_1_n_0),
        .I2(l_e_d_INST_0_i_2_n_0),
        .I3(l_e_d_INST_0_i_3_n_0),
        .I4(l_e_d_INST_0_i_4_n_0),
        .O(\led_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[0]_i_2 
       (.I0(led_counter_reg[0]),
        .O(\led_counter[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[13]_i_2 
       (.I0(led_counter_reg[16]),
        .O(\led_counter[13]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[13]_i_3 
       (.I0(led_counter_reg[15]),
        .O(\led_counter[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[13]_i_4 
       (.I0(led_counter_reg[14]),
        .O(\led_counter[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[13]_i_5 
       (.I0(led_counter_reg[13]),
        .O(\led_counter[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[17]_i_2 
       (.I0(led_counter_reg[20]),
        .O(\led_counter[17]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[17]_i_3 
       (.I0(led_counter_reg[19]),
        .O(\led_counter[17]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[17]_i_4 
       (.I0(led_counter_reg[18]),
        .O(\led_counter[17]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[17]_i_5 
       (.I0(led_counter_reg[17]),
        .O(\led_counter[17]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[1]_i_2 
       (.I0(led_counter_reg[4]),
        .O(\led_counter[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[1]_i_3 
       (.I0(led_counter_reg[3]),
        .O(\led_counter[1]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[1]_i_4 
       (.I0(led_counter_reg[2]),
        .O(\led_counter[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[1]_i_5 
       (.I0(led_counter_reg[1]),
        .O(\led_counter[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[21]_i_2 
       (.I0(led_counter_reg[24]),
        .O(\led_counter[21]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[21]_i_3 
       (.I0(led_counter_reg[23]),
        .O(\led_counter[21]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[21]_i_4 
       (.I0(led_counter_reg[22]),
        .O(\led_counter[21]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[21]_i_5 
       (.I0(led_counter_reg[21]),
        .O(\led_counter[21]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[25]_i_2 
       (.I0(led_counter_reg[28]),
        .O(\led_counter[25]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[25]_i_3 
       (.I0(led_counter_reg[27]),
        .O(\led_counter[25]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[25]_i_4 
       (.I0(led_counter_reg[26]),
        .O(\led_counter[25]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[25]_i_5 
       (.I0(led_counter_reg[25]),
        .O(\led_counter[25]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[29]_i_2 
       (.I0(led_counter_reg[31]),
        .O(\led_counter[29]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[29]_i_3 
       (.I0(led_counter_reg[30]),
        .O(\led_counter[29]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[29]_i_4 
       (.I0(led_counter_reg[29]),
        .O(\led_counter[29]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[5]_i_2 
       (.I0(led_counter_reg[8]),
        .O(\led_counter[5]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[5]_i_3 
       (.I0(led_counter_reg[7]),
        .O(\led_counter[5]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[5]_i_4 
       (.I0(led_counter_reg[6]),
        .O(\led_counter[5]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[5]_i_5 
       (.I0(led_counter_reg[5]),
        .O(\led_counter[5]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[9]_i_2 
       (.I0(led_counter_reg[12]),
        .O(\led_counter[9]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[9]_i_3 
       (.I0(led_counter_reg[11]),
        .O(\led_counter[9]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[9]_i_4 
       (.I0(led_counter_reg[10]),
        .O(\led_counter[9]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \led_counter[9]_i_5 
       (.I0(led_counter_reg[9]),
        .O(\led_counter[9]_i_5_n_0 ));
  FDRE \led_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter[0]_i_2_n_0 ),
        .Q(led_counter_reg[0]),
        .R(clear));
  FDRE \led_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[9]_i_1_n_6 ),
        .Q(led_counter_reg[10]),
        .R(clear));
  FDRE \led_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[9]_i_1_n_5 ),
        .Q(led_counter_reg[11]),
        .R(clear));
  FDRE \led_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[9]_i_1_n_4 ),
        .Q(led_counter_reg[12]),
        .R(clear));
  FDRE \led_counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[13]_i_1_n_7 ),
        .Q(led_counter_reg[13]),
        .R(clear));
  CARRY4 \led_counter_reg[13]_i_1 
       (.CI(\led_counter_reg[9]_i_1_n_0 ),
        .CO({\led_counter_reg[13]_i_1_n_0 ,\led_counter_reg[13]_i_1_n_1 ,\led_counter_reg[13]_i_1_n_2 ,\led_counter_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[16:13]),
        .O({\led_counter_reg[13]_i_1_n_4 ,\led_counter_reg[13]_i_1_n_5 ,\led_counter_reg[13]_i_1_n_6 ,\led_counter_reg[13]_i_1_n_7 }),
        .S({\led_counter[13]_i_2_n_0 ,\led_counter[13]_i_3_n_0 ,\led_counter[13]_i_4_n_0 ,\led_counter[13]_i_5_n_0 }));
  FDRE \led_counter_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[13]_i_1_n_6 ),
        .Q(led_counter_reg[14]),
        .R(clear));
  FDRE \led_counter_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[13]_i_1_n_5 ),
        .Q(led_counter_reg[15]),
        .R(clear));
  FDRE \led_counter_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[13]_i_1_n_4 ),
        .Q(led_counter_reg[16]),
        .R(clear));
  FDRE \led_counter_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[17]_i_1_n_7 ),
        .Q(led_counter_reg[17]),
        .R(clear));
  CARRY4 \led_counter_reg[17]_i_1 
       (.CI(\led_counter_reg[13]_i_1_n_0 ),
        .CO({\led_counter_reg[17]_i_1_n_0 ,\led_counter_reg[17]_i_1_n_1 ,\led_counter_reg[17]_i_1_n_2 ,\led_counter_reg[17]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[20:17]),
        .O({\led_counter_reg[17]_i_1_n_4 ,\led_counter_reg[17]_i_1_n_5 ,\led_counter_reg[17]_i_1_n_6 ,\led_counter_reg[17]_i_1_n_7 }),
        .S({\led_counter[17]_i_2_n_0 ,\led_counter[17]_i_3_n_0 ,\led_counter[17]_i_4_n_0 ,\led_counter[17]_i_5_n_0 }));
  FDRE \led_counter_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[17]_i_1_n_6 ),
        .Q(led_counter_reg[18]),
        .R(clear));
  FDRE \led_counter_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[17]_i_1_n_5 ),
        .Q(led_counter_reg[19]),
        .R(clear));
  FDRE \led_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[1]_i_1_n_7 ),
        .Q(led_counter_reg[1]),
        .R(clear));
  CARRY4 \led_counter_reg[1]_i_1 
       (.CI(1'b0),
        .CO({\led_counter_reg[1]_i_1_n_0 ,\led_counter_reg[1]_i_1_n_1 ,\led_counter_reg[1]_i_1_n_2 ,\led_counter_reg[1]_i_1_n_3 }),
        .CYINIT(led_counter_reg[0]),
        .DI(led_counter_reg[4:1]),
        .O({\led_counter_reg[1]_i_1_n_4 ,\led_counter_reg[1]_i_1_n_5 ,\led_counter_reg[1]_i_1_n_6 ,\led_counter_reg[1]_i_1_n_7 }),
        .S({\led_counter[1]_i_2_n_0 ,\led_counter[1]_i_3_n_0 ,\led_counter[1]_i_4_n_0 ,\led_counter[1]_i_5_n_0 }));
  FDRE \led_counter_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[17]_i_1_n_4 ),
        .Q(led_counter_reg[20]),
        .R(clear));
  FDRE \led_counter_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[21]_i_1_n_7 ),
        .Q(led_counter_reg[21]),
        .R(clear));
  CARRY4 \led_counter_reg[21]_i_1 
       (.CI(\led_counter_reg[17]_i_1_n_0 ),
        .CO({\led_counter_reg[21]_i_1_n_0 ,\led_counter_reg[21]_i_1_n_1 ,\led_counter_reg[21]_i_1_n_2 ,\led_counter_reg[21]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[24:21]),
        .O({\led_counter_reg[21]_i_1_n_4 ,\led_counter_reg[21]_i_1_n_5 ,\led_counter_reg[21]_i_1_n_6 ,\led_counter_reg[21]_i_1_n_7 }),
        .S({\led_counter[21]_i_2_n_0 ,\led_counter[21]_i_3_n_0 ,\led_counter[21]_i_4_n_0 ,\led_counter[21]_i_5_n_0 }));
  FDRE \led_counter_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[21]_i_1_n_6 ),
        .Q(led_counter_reg[22]),
        .R(clear));
  FDRE \led_counter_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[21]_i_1_n_5 ),
        .Q(led_counter_reg[23]),
        .R(clear));
  FDRE \led_counter_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[21]_i_1_n_4 ),
        .Q(led_counter_reg[24]),
        .R(clear));
  FDRE \led_counter_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[25]_i_1_n_7 ),
        .Q(led_counter_reg[25]),
        .R(clear));
  CARRY4 \led_counter_reg[25]_i_1 
       (.CI(\led_counter_reg[21]_i_1_n_0 ),
        .CO({\led_counter_reg[25]_i_1_n_0 ,\led_counter_reg[25]_i_1_n_1 ,\led_counter_reg[25]_i_1_n_2 ,\led_counter_reg[25]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[28:25]),
        .O({\led_counter_reg[25]_i_1_n_4 ,\led_counter_reg[25]_i_1_n_5 ,\led_counter_reg[25]_i_1_n_6 ,\led_counter_reg[25]_i_1_n_7 }),
        .S({\led_counter[25]_i_2_n_0 ,\led_counter[25]_i_3_n_0 ,\led_counter[25]_i_4_n_0 ,\led_counter[25]_i_5_n_0 }));
  FDRE \led_counter_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[25]_i_1_n_6 ),
        .Q(led_counter_reg[26]),
        .R(clear));
  FDRE \led_counter_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[25]_i_1_n_5 ),
        .Q(led_counter_reg[27]),
        .R(clear));
  FDRE \led_counter_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[25]_i_1_n_4 ),
        .Q(led_counter_reg[28]),
        .R(clear));
  FDRE \led_counter_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[29]_i_1_n_7 ),
        .Q(led_counter_reg[29]),
        .R(clear));
  CARRY4 \led_counter_reg[29]_i_1 
       (.CI(\led_counter_reg[25]_i_1_n_0 ),
        .CO({\NLW_led_counter_reg[29]_i_1_CO_UNCONNECTED [3:2],\led_counter_reg[29]_i_1_n_2 ,\led_counter_reg[29]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,led_counter_reg[30:29]}),
        .O({\NLW_led_counter_reg[29]_i_1_O_UNCONNECTED [3],\led_counter_reg[29]_i_1_n_5 ,\led_counter_reg[29]_i_1_n_6 ,\led_counter_reg[29]_i_1_n_7 }),
        .S({1'b0,\led_counter[29]_i_2_n_0 ,\led_counter[29]_i_3_n_0 ,\led_counter[29]_i_4_n_0 }));
  FDRE \led_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[1]_i_1_n_6 ),
        .Q(led_counter_reg[2]),
        .R(clear));
  FDRE \led_counter_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[29]_i_1_n_6 ),
        .Q(led_counter_reg[30]),
        .R(clear));
  FDRE \led_counter_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[29]_i_1_n_5 ),
        .Q(led_counter_reg[31]),
        .R(clear));
  FDRE \led_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[1]_i_1_n_5 ),
        .Q(led_counter_reg[3]),
        .R(clear));
  FDRE \led_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[1]_i_1_n_4 ),
        .Q(led_counter_reg[4]),
        .R(clear));
  FDRE \led_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[5]_i_1_n_7 ),
        .Q(led_counter_reg[5]),
        .R(clear));
  CARRY4 \led_counter_reg[5]_i_1 
       (.CI(\led_counter_reg[1]_i_1_n_0 ),
        .CO({\led_counter_reg[5]_i_1_n_0 ,\led_counter_reg[5]_i_1_n_1 ,\led_counter_reg[5]_i_1_n_2 ,\led_counter_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[8:5]),
        .O({\led_counter_reg[5]_i_1_n_4 ,\led_counter_reg[5]_i_1_n_5 ,\led_counter_reg[5]_i_1_n_6 ,\led_counter_reg[5]_i_1_n_7 }),
        .S({\led_counter[5]_i_2_n_0 ,\led_counter[5]_i_3_n_0 ,\led_counter[5]_i_4_n_0 ,\led_counter[5]_i_5_n_0 }));
  FDRE \led_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[5]_i_1_n_6 ),
        .Q(led_counter_reg[6]),
        .R(clear));
  FDRE \led_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[5]_i_1_n_5 ),
        .Q(led_counter_reg[7]),
        .R(clear));
  FDRE \led_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[5]_i_1_n_4 ),
        .Q(led_counter_reg[8]),
        .R(clear));
  FDRE \led_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\led_counter[0]_i_1_n_0 ),
        .D(\led_counter_reg[9]_i_1_n_7 ),
        .Q(led_counter_reg[9]),
        .R(clear));
  CARRY4 \led_counter_reg[9]_i_1 
       (.CI(\led_counter_reg[5]_i_1_n_0 ),
        .CO({\led_counter_reg[9]_i_1_n_0 ,\led_counter_reg[9]_i_1_n_1 ,\led_counter_reg[9]_i_1_n_2 ,\led_counter_reg[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(led_counter_reg[12:9]),
        .O({\led_counter_reg[9]_i_1_n_4 ,\led_counter_reg[9]_i_1_n_5 ,\led_counter_reg[9]_i_1_n_6 ,\led_counter_reg[9]_i_1_n_7 }),
        .S({\led_counter[9]_i_2_n_0 ,\led_counter[9]_i_3_n_0 ,\led_counter[9]_i_4_n_0 ,\led_counter[9]_i_5_n_0 }));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[11]_i_2 
       (.I0(line_counter_w[11]),
        .O(\line_counter[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[11]_i_3 
       (.I0(line_counter_w[10]),
        .O(\line_counter[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[11]_i_4 
       (.I0(line_counter_w[9]),
        .O(\line_counter[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[11]_i_5 
       (.I0(line_counter_w[8]),
        .O(\line_counter[11]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \line_counter[15]_i_1 
       (.I0(s00_axis_tuser),
        .I1(s00_axis_tvalid),
        .I2(s00_axis_aresetn),
        .O(\line_counter[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \line_counter[15]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(s00_axis_tlast),
        .O(line_counter0));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[15]_i_4 
       (.I0(line_counter_w[15]),
        .O(\line_counter[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[15]_i_5 
       (.I0(line_counter_w[14]),
        .O(\line_counter[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[15]_i_6 
       (.I0(line_counter_w[13]),
        .O(\line_counter[15]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[15]_i_7 
       (.I0(line_counter_w[12]),
        .O(\line_counter[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[3]_i_2 
       (.I0(line_counter_w[3]),
        .O(\line_counter[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[3]_i_3 
       (.I0(line_counter_w[2]),
        .O(\line_counter[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[3]_i_4 
       (.I0(line_counter_w[1]),
        .O(\line_counter[3]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \line_counter[3]_i_5 
       (.I0(line_counter_w[0]),
        .O(\line_counter[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[7]_i_2 
       (.I0(line_counter_w[7]),
        .O(\line_counter[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[7]_i_3 
       (.I0(line_counter_w[6]),
        .O(\line_counter[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[7]_i_4 
       (.I0(line_counter_w[5]),
        .O(\line_counter[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \line_counter[7]_i_5 
       (.I0(line_counter_w[4]),
        .O(\line_counter[7]_i_5_n_0 ));
  FDRE \line_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[3]_i_1_n_7 ),
        .Q(line_counter_w[0]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[11]_i_1_n_5 ),
        .Q(line_counter_w[10]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[11]_i_1_n_4 ),
        .Q(line_counter_w[11]),
        .R(\line_counter[15]_i_1_n_0 ));
  CARRY4 \line_counter_reg[11]_i_1 
       (.CI(\line_counter_reg[7]_i_1_n_0 ),
        .CO({\line_counter_reg[11]_i_1_n_0 ,\line_counter_reg[11]_i_1_n_1 ,\line_counter_reg[11]_i_1_n_2 ,\line_counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_counter_reg[11]_i_1_n_4 ,\line_counter_reg[11]_i_1_n_5 ,\line_counter_reg[11]_i_1_n_6 ,\line_counter_reg[11]_i_1_n_7 }),
        .S({\line_counter[11]_i_2_n_0 ,\line_counter[11]_i_3_n_0 ,\line_counter[11]_i_4_n_0 ,\line_counter[11]_i_5_n_0 }));
  FDRE \line_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[15]_i_3_n_7 ),
        .Q(line_counter_w[12]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[13] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[15]_i_3_n_6 ),
        .Q(line_counter_w[13]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[14] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[15]_i_3_n_5 ),
        .Q(line_counter_w[14]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[15] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[15]_i_3_n_4 ),
        .Q(line_counter_w[15]),
        .R(\line_counter[15]_i_1_n_0 ));
  CARRY4 \line_counter_reg[15]_i_3 
       (.CI(\line_counter_reg[11]_i_1_n_0 ),
        .CO({\NLW_line_counter_reg[15]_i_3_CO_UNCONNECTED [3],\line_counter_reg[15]_i_3_n_1 ,\line_counter_reg[15]_i_3_n_2 ,\line_counter_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_counter_reg[15]_i_3_n_4 ,\line_counter_reg[15]_i_3_n_5 ,\line_counter_reg[15]_i_3_n_6 ,\line_counter_reg[15]_i_3_n_7 }),
        .S({\line_counter[15]_i_4_n_0 ,\line_counter[15]_i_5_n_0 ,\line_counter[15]_i_6_n_0 ,\line_counter[15]_i_7_n_0 }));
  FDRE \line_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[3]_i_1_n_6 ),
        .Q(line_counter_w[1]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[3]_i_1_n_5 ),
        .Q(line_counter_w[2]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[3]_i_1_n_4 ),
        .Q(line_counter_w[3]),
        .R(\line_counter[15]_i_1_n_0 ));
  CARRY4 \line_counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\line_counter_reg[3]_i_1_n_0 ,\line_counter_reg[3]_i_1_n_1 ,\line_counter_reg[3]_i_1_n_2 ,\line_counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\line_counter_reg[3]_i_1_n_4 ,\line_counter_reg[3]_i_1_n_5 ,\line_counter_reg[3]_i_1_n_6 ,\line_counter_reg[3]_i_1_n_7 }),
        .S({\line_counter[3]_i_2_n_0 ,\line_counter[3]_i_3_n_0 ,\line_counter[3]_i_4_n_0 ,\line_counter[3]_i_5_n_0 }));
  FDRE \line_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[7]_i_1_n_7 ),
        .Q(line_counter_w[4]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[7]_i_1_n_6 ),
        .Q(line_counter_w[5]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[7]_i_1_n_5 ),
        .Q(line_counter_w[6]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[7]_i_1_n_4 ),
        .Q(line_counter_w[7]),
        .R(\line_counter[15]_i_1_n_0 ));
  CARRY4 \line_counter_reg[7]_i_1 
       (.CI(\line_counter_reg[3]_i_1_n_0 ),
        .CO({\line_counter_reg[7]_i_1_n_0 ,\line_counter_reg[7]_i_1_n_1 ,\line_counter_reg[7]_i_1_n_2 ,\line_counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_counter_reg[7]_i_1_n_4 ,\line_counter_reg[7]_i_1_n_5 ,\line_counter_reg[7]_i_1_n_6 ,\line_counter_reg[7]_i_1_n_7 }),
        .S({\line_counter[7]_i_2_n_0 ,\line_counter[7]_i_3_n_0 ,\line_counter[7]_i_4_n_0 ,\line_counter[7]_i_5_n_0 }));
  FDRE \line_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[11]_i_1_n_7 ),
        .Q(line_counter_w[8]),
        .R(\line_counter[15]_i_1_n_0 ));
  FDRE \line_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(line_counter0),
        .D(\line_counter_reg[11]_i_1_n_6 ),
        .Q(line_counter_w[9]),
        .R(\line_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \store_new_data_states[0]_i_1 
       (.I0(store_new_data_states0),
        .I1(store_new_data_states),
        .O(\store_new_data_states[0]_i_1_n_0 ));
  FDRE \store_new_data_states_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\store_new_data_states[0]_i_1_n_0 ),
        .Q(store_new_data_states),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
