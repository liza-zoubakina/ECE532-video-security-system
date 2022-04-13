-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Mar 30 12:16:09 2022
-- Host        : Waqfenau313c running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/hdmi_demo_2016/attempt3/Nexys-Video-HDMI-2016.4-2/Nexys-Video-HDMI/src/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_stub.vhdl
-- Design      : hdmi_motion_detection_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hdmi_motion_detection_0_0 is
  Port ( 
    s00_axis_tuser : in STD_LOGIC;
    counter_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    line_counter_w : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_counter_w : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_wait_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    l_e_d : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );

end hdmi_motion_detection_0_0;

architecture stub of hdmi_motion_detection_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s00_axis_tuser,counter_w[31:0],line_counter_w[15:0],frame_counter_w[15:0],frame_wait_w[31:0],l_e_d,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,s00_axis_tready,s00_axis_aclk,s00_axis_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "motion_detection_v1_0,Vivado 2016.4";
begin
end;
