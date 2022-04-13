// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Wed Mar 30 12:16:09 2022
// Host        : Waqfenau313c running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/hdmi_demo_2016/attempt3/Nexys-Video-HDMI-2016.4-2/Nexys-Video-HDMI/src/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_stub.v
// Design      : hdmi_motion_detection_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "motion_detection_v1_0,Vivado 2016.4" *)
module hdmi_motion_detection_0_0(s00_axis_tuser, counter_w, line_counter_w, 
  frame_counter_w, frame_wait_w, l_e_d, s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, 
  s00_axis_tvalid, s00_axis_tready, s00_axis_aclk, s00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s00_axis_tuser,counter_w[31:0],line_counter_w[15:0],frame_counter_w[15:0],frame_wait_w[31:0],l_e_d,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,s00_axis_tready,s00_axis_aclk,s00_axis_aresetn" */;
  input s00_axis_tuser;
  output [31:0]counter_w;
  output [15:0]line_counter_w;
  output [15:0]frame_counter_w;
  output [31:0]frame_wait_w;
  output l_e_d;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_aresetn;
endmodule
