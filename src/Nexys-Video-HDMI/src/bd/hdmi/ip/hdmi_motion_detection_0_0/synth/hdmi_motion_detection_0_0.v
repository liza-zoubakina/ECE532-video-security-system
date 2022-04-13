// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:motion_detection:1.0
// IP Revision: 2

(* X_CORE_INFO = "motion_detection_v1_0,Vivado 2016.4" *)
(* CHECK_LICENSE_TYPE = "hdmi_motion_detection_0_0,motion_detection_v1_0,{}" *)
(* CORE_GENERATION_INFO = "hdmi_motion_detection_0_0,motion_detection_v1_0,{x_ipProduct=Vivado 2016.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=motion_detection,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S00_AXIS_TDATA_WIDTH=32}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hdmi_motion_detection_0_0 (
  s00_axis_tuser,
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
  s00_axis_aresetn
);

input wire s00_axis_tuser;
output wire [31 : 0] counter_w;
output wire [15 : 0] line_counter_w;
output wire [15 : 0] frame_counter_w;
output wire [31 : 0] frame_wait_w;
output wire l_e_d;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *)
input wire [31 : 0] s00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *)
input wire [3 : 0] s00_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *)
input wire s00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *)
input wire s00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *)
input wire s00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 s00_axis_aclk CLK" *)
input wire s00_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST, xilinx.com:signal:reset:1.0 s00_axis_aresetn RST" *)
input wire s00_axis_aresetn;

  motion_detection_v1_0 #(
    .C_S00_AXIS_TDATA_WIDTH(32)  // AXI4Stream sink: Data Width
  ) inst (
    .s00_axis_tuser(s00_axis_tuser),
    .counter_w(counter_w),
    .line_counter_w(line_counter_w),
    .frame_counter_w(frame_counter_w),
    .frame_wait_w(frame_wait_w),
    .l_e_d(l_e_d),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tstrb(s00_axis_tstrb),
    .s00_axis_tlast(s00_axis_tlast),
    .s00_axis_tvalid(s00_axis_tvalid),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_aclk(s00_axis_aclk),
    .s00_axis_aresetn(s00_axis_aresetn)
  );
endmodule
