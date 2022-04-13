-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Mar 30 12:16:09 2022
-- Host        : Waqfenau313c running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/hdmi_demo_2016/attempt3/Nexys-Video-HDMI-2016.4-2/Nexys-Video-HDMI/src/bd/hdmi/ip/hdmi_motion_detection_0_0/hdmi_motion_detection_0_0_sim_netlist.vhdl
-- Design      : hdmi_motion_detection_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0_motion_detection_v1_0 is
  port (
    counter_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    line_counter_w : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_counter_w : out STD_LOGIC_VECTOR ( 15 downto 0 );
    frame_wait_w : out STD_LOGIC_VECTOR ( 31 downto 0 );
    l_e_d : out STD_LOGIC;
    s00_axis_tuser : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tready : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hdmi_motion_detection_0_0_motion_detection_v1_0 : entity is "motion_detection_v1_0";
end hdmi_motion_detection_0_0_motion_detection_v1_0;

architecture STRUCTURE of hdmi_motion_detection_0_0_motion_detection_v1_0 is
  signal clear : STD_LOGIC;
  signal \counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter[15]_i_5_n_0\ : STD_LOGIC;
  signal \counter[19]_i_2_n_0\ : STD_LOGIC;
  signal \counter[19]_i_3_n_0\ : STD_LOGIC;
  signal \counter[19]_i_4_n_0\ : STD_LOGIC;
  signal \counter[19]_i_5_n_0\ : STD_LOGIC;
  signal \counter[23]_i_2_n_0\ : STD_LOGIC;
  signal \counter[23]_i_3_n_0\ : STD_LOGIC;
  signal \counter[23]_i_4_n_0\ : STD_LOGIC;
  signal \counter[23]_i_5_n_0\ : STD_LOGIC;
  signal \counter[27]_i_2_n_0\ : STD_LOGIC;
  signal \counter[27]_i_3_n_0\ : STD_LOGIC;
  signal \counter[27]_i_4_n_0\ : STD_LOGIC;
  signal \counter[27]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^counter_w\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal frame0_raddr0 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal \frame0_raddr[0]_i_10_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_11_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_12_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_13_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_14_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_15_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_17_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_18_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_19_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_20_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_21_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_22_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_23_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_24_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_25_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_26_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_27_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_28_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_4_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_5_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_8_n_0\ : STD_LOGIC;
  signal \frame0_raddr[0]_i_9_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_10_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_2_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_4_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_5_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_8_n_0\ : STD_LOGIC;
  signal \frame0_raddr[12]_i_9_n_0\ : STD_LOGIC;
  signal \frame0_raddr[16]_i_2_n_0\ : STD_LOGIC;
  signal \frame0_raddr[16]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_raddr[16]_i_4_n_0\ : STD_LOGIC;
  signal \frame0_raddr[16]_i_6_n_0\ : STD_LOGIC;
  signal \frame0_raddr[16]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_10_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_4_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_5_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_8_n_0\ : STD_LOGIC;
  signal \frame0_raddr[4]_i_9_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_10_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_2_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_4_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_5_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_8_n_0\ : STD_LOGIC;
  signal \frame0_raddr[8]_i_9_n_0\ : STD_LOGIC;
  signal frame0_raddr_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \frame0_raddr_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \frame0_raddr_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_6_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_6_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_6_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[12]_i_6_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \frame0_raddr_reg[16]_i_5_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_6_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_6_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[4]_i_6_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_6_n_1\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_6_n_2\ : STD_LOGIC;
  signal \frame0_raddr_reg[8]_i_6_n_3\ : STD_LOGIC;
  signal \frame0_waddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_waddr[18]_i_2_n_0\ : STD_LOGIC;
  signal frame0_waddr_counter : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \frame0_waddr_counter0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \frame0_waddr_counter0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal frame0_waddr_counter1 : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_10_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_11_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_12_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_13_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_14_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_15_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_16_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_17_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_18_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_19_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_20_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_21_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_3_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_5_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_6_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_7_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_8_n_0\ : STD_LOGIC;
  signal \frame0_waddr_counter[18]_i_9_n_0\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[12]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[13]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[14]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[15]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[16]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[17]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[18]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \frame0_waddr_reg_n_0_[9]\ : STD_LOGIC;
  signal frame_counter0 : STD_LOGIC;
  signal \frame_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \frame_counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \frame_counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \frame_counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \frame_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \frame_counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \frame_counter[15]_i_5_n_0\ : STD_LOGIC;
  signal \frame_counter[15]_i_6_n_0\ : STD_LOGIC;
  signal \frame_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \frame_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \frame_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \frame_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \frame_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \frame_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \frame_counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \frame_counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \frame_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^frame_counter_w\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \frame_wait[11]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[11]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[11]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[11]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[15]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[15]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[15]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[15]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[19]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[19]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[19]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[19]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[23]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[23]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[23]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[23]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[27]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[27]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[27]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[27]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_10_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_11_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_12_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_6_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_7_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_8_n_0\ : STD_LOGIC;
  signal \frame_wait[31]_i_9_n_0\ : STD_LOGIC;
  signal \frame_wait[3]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[3]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[3]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[3]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait[7]_i_2_n_0\ : STD_LOGIC;
  signal \frame_wait[7]_i_3_n_0\ : STD_LOGIC;
  signal \frame_wait[7]_i_4_n_0\ : STD_LOGIC;
  signal \frame_wait[7]_i_5_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \frame_wait_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^frame_wait_w\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal l_e_d_INST_0_i_1_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_2_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_3_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_4_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_5_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_6_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_7_n_0 : STD_LOGIC;
  signal l_e_d_INST_0_i_8_n_0 : STD_LOGIC;
  signal \led_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter[0]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[13]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[13]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[13]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[13]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[17]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[17]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[17]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[17]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[1]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[1]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[1]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[1]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[21]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[21]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[21]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[21]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[25]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[25]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[25]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[25]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[29]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[29]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[29]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[5]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[5]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[5]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[5]_i_5_n_0\ : STD_LOGIC;
  signal \led_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \led_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \led_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \led_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal led_counter_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \led_counter_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[17]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[1]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[25]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[29]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[29]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[5]_i_1_n_7\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_1\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_2\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_3\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_4\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_5\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_6\ : STD_LOGIC;
  signal \led_counter_reg[9]_i_1_n_7\ : STD_LOGIC;
  signal line_counter0 : STD_LOGIC;
  signal \line_counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \line_counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \line_counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \line_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \line_counter[15]_i_5_n_0\ : STD_LOGIC;
  signal \line_counter[15]_i_6_n_0\ : STD_LOGIC;
  signal \line_counter[15]_i_7_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \line_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \line_counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \line_counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \line_counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_1\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_4\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_5\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_6\ : STD_LOGIC;
  signal \line_counter_reg[15]_i_3_n_7\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \line_counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \line_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \^line_counter_w\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal store_new_data_states : STD_LOGIC_VECTOR ( 0 to 0 );
  signal store_new_data_states0 : STD_LOGIC;
  signal \store_new_data_states[0]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frame0_raddr_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame0_raddr_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frame0_raddr_reg[16]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_frame0_raddr_reg[16]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame0_waddr_counter0_inferred__1/i__carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_frame0_waddr_counter0_inferred__1/i__carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_frame_counter_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_frame_wait_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_led_counter_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_led_counter_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_line_counter_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_19\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_24\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_25\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_26\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_27\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \frame0_raddr[0]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[15]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_10\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_21\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[18]_i_9\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \frame0_waddr_counter[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of l_e_d_INST_0_i_7 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \led_counter[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \store_new_data_states[0]_i_1\ : label is "soft_lutpair5";
begin
  counter_w(31 downto 0) <= \^counter_w\(31 downto 0);
  frame_counter_w(15 downto 0) <= \^frame_counter_w\(15 downto 0);
  frame_wait_w(31 downto 0) <= \^frame_wait_w\(31 downto 0);
  line_counter_w(15 downto 0) <= \^line_counter_w\(15 downto 0);
\counter[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(11),
      O => \counter[11]_i_2_n_0\
    );
\counter[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(10),
      O => \counter[11]_i_3_n_0\
    );
\counter[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(9),
      O => \counter[11]_i_4_n_0\
    );
\counter[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(8),
      O => \counter[11]_i_5_n_0\
    );
\counter[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(15),
      O => \counter[15]_i_2_n_0\
    );
\counter[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(14),
      O => \counter[15]_i_3_n_0\
    );
\counter[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(13),
      O => \counter[15]_i_4_n_0\
    );
\counter[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(12),
      O => \counter[15]_i_5_n_0\
    );
\counter[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(19),
      O => \counter[19]_i_2_n_0\
    );
\counter[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(18),
      O => \counter[19]_i_3_n_0\
    );
\counter[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(17),
      O => \counter[19]_i_4_n_0\
    );
\counter[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(16),
      O => \counter[19]_i_5_n_0\
    );
\counter[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(23),
      O => \counter[23]_i_2_n_0\
    );
\counter[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(22),
      O => \counter[23]_i_3_n_0\
    );
\counter[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(21),
      O => \counter[23]_i_4_n_0\
    );
\counter[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(20),
      O => \counter[23]_i_5_n_0\
    );
\counter[27]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(27),
      O => \counter[27]_i_2_n_0\
    );
\counter[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(26),
      O => \counter[27]_i_3_n_0\
    );
\counter[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(25),
      O => \counter[27]_i_4_n_0\
    );
\counter[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(24),
      O => \counter[27]_i_5_n_0\
    );
\counter[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => clear
    );
\counter[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(31),
      O => \counter[31]_i_3_n_0\
    );
\counter[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(30),
      O => \counter[31]_i_4_n_0\
    );
\counter[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(29),
      O => \counter[31]_i_5_n_0\
    );
\counter[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(28),
      O => \counter[31]_i_6_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(3),
      O => \counter[3]_i_2_n_0\
    );
\counter[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(2),
      O => \counter[3]_i_3_n_0\
    );
\counter[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(1),
      O => \counter[3]_i_4_n_0\
    );
\counter[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_w\(0),
      O => \counter[3]_i_5_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(7),
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(6),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(5),
      O => \counter[7]_i_4_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^counter_w\(4),
      O => \counter[7]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_7\,
      Q => \^counter_w\(0),
      R => clear
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_5\,
      Q => \^counter_w\(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_4\,
      Q => \^counter_w\(11),
      R => clear
    );
\counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[7]_i_1_n_0\,
      CO(3) => \counter_reg[11]_i_1_n_0\,
      CO(2) => \counter_reg[11]_i_1_n_1\,
      CO(1) => \counter_reg[11]_i_1_n_2\,
      CO(0) => \counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[11]_i_1_n_4\,
      O(2) => \counter_reg[11]_i_1_n_5\,
      O(1) => \counter_reg[11]_i_1_n_6\,
      O(0) => \counter_reg[11]_i_1_n_7\,
      S(3) => \counter[11]_i_2_n_0\,
      S(2) => \counter[11]_i_3_n_0\,
      S(1) => \counter[11]_i_4_n_0\,
      S(0) => \counter[11]_i_5_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_7\,
      Q => \^counter_w\(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_6\,
      Q => \^counter_w\(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_5\,
      Q => \^counter_w\(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[15]_i_1_n_4\,
      Q => \^counter_w\(15),
      R => clear
    );
\counter_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[11]_i_1_n_0\,
      CO(3) => \counter_reg[15]_i_1_n_0\,
      CO(2) => \counter_reg[15]_i_1_n_1\,
      CO(1) => \counter_reg[15]_i_1_n_2\,
      CO(0) => \counter_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[15]_i_1_n_4\,
      O(2) => \counter_reg[15]_i_1_n_5\,
      O(1) => \counter_reg[15]_i_1_n_6\,
      O(0) => \counter_reg[15]_i_1_n_7\,
      S(3) => \counter[15]_i_2_n_0\,
      S(2) => \counter[15]_i_3_n_0\,
      S(1) => \counter[15]_i_4_n_0\,
      S(0) => \counter[15]_i_5_n_0\
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[19]_i_1_n_7\,
      Q => \^counter_w\(16),
      R => clear
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[19]_i_1_n_6\,
      Q => \^counter_w\(17),
      R => clear
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[19]_i_1_n_5\,
      Q => \^counter_w\(18),
      R => clear
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[19]_i_1_n_4\,
      Q => \^counter_w\(19),
      R => clear
    );
\counter_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[15]_i_1_n_0\,
      CO(3) => \counter_reg[19]_i_1_n_0\,
      CO(2) => \counter_reg[19]_i_1_n_1\,
      CO(1) => \counter_reg[19]_i_1_n_2\,
      CO(0) => \counter_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[19]_i_1_n_4\,
      O(2) => \counter_reg[19]_i_1_n_5\,
      O(1) => \counter_reg[19]_i_1_n_6\,
      O(0) => \counter_reg[19]_i_1_n_7\,
      S(3) => \counter[19]_i_2_n_0\,
      S(2) => \counter[19]_i_3_n_0\,
      S(1) => \counter[19]_i_4_n_0\,
      S(0) => \counter[19]_i_5_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_6\,
      Q => \^counter_w\(1),
      R => clear
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_7\,
      Q => \^counter_w\(20),
      R => clear
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_6\,
      Q => \^counter_w\(21),
      R => clear
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_5\,
      Q => \^counter_w\(22),
      R => clear
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[23]_i_1_n_4\,
      Q => \^counter_w\(23),
      R => clear
    );
\counter_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[19]_i_1_n_0\,
      CO(3) => \counter_reg[23]_i_1_n_0\,
      CO(2) => \counter_reg[23]_i_1_n_1\,
      CO(1) => \counter_reg[23]_i_1_n_2\,
      CO(0) => \counter_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[23]_i_1_n_4\,
      O(2) => \counter_reg[23]_i_1_n_5\,
      O(1) => \counter_reg[23]_i_1_n_6\,
      O(0) => \counter_reg[23]_i_1_n_7\,
      S(3) => \counter[23]_i_2_n_0\,
      S(2) => \counter[23]_i_3_n_0\,
      S(1) => \counter[23]_i_4_n_0\,
      S(0) => \counter[23]_i_5_n_0\
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[27]_i_1_n_7\,
      Q => \^counter_w\(24),
      R => clear
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[27]_i_1_n_6\,
      Q => \^counter_w\(25),
      R => clear
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[27]_i_1_n_5\,
      Q => \^counter_w\(26),
      R => clear
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[27]_i_1_n_4\,
      Q => \^counter_w\(27),
      R => clear
    );
\counter_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[23]_i_1_n_0\,
      CO(3) => \counter_reg[27]_i_1_n_0\,
      CO(2) => \counter_reg[27]_i_1_n_1\,
      CO(1) => \counter_reg[27]_i_1_n_2\,
      CO(0) => \counter_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[27]_i_1_n_4\,
      O(2) => \counter_reg[27]_i_1_n_5\,
      O(1) => \counter_reg[27]_i_1_n_6\,
      O(0) => \counter_reg[27]_i_1_n_7\,
      S(3) => \counter[27]_i_2_n_0\,
      S(2) => \counter[27]_i_3_n_0\,
      S(1) => \counter[27]_i_4_n_0\,
      S(0) => \counter[27]_i_5_n_0\
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[31]_i_2_n_7\,
      Q => \^counter_w\(28),
      R => clear
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[31]_i_2_n_6\,
      Q => \^counter_w\(29),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_5\,
      Q => \^counter_w\(2),
      R => clear
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[31]_i_2_n_5\,
      Q => \^counter_w\(30),
      R => clear
    );
\counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[31]_i_2_n_4\,
      Q => \^counter_w\(31),
      R => clear
    );
\counter_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[27]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[31]_i_2_n_1\,
      CO(1) => \counter_reg[31]_i_2_n_2\,
      CO(0) => \counter_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[31]_i_2_n_4\,
      O(2) => \counter_reg[31]_i_2_n_5\,
      O(1) => \counter_reg[31]_i_2_n_6\,
      O(0) => \counter_reg[31]_i_2_n_7\,
      S(3) => \counter[31]_i_3_n_0\,
      S(2) => \counter[31]_i_4_n_0\,
      S(1) => \counter[31]_i_5_n_0\,
      S(0) => \counter[31]_i_6_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_4\,
      Q => \^counter_w\(3),
      R => clear
    );
\counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[3]_i_1_n_0\,
      CO(2) => \counter_reg[3]_i_1_n_1\,
      CO(1) => \counter_reg[3]_i_1_n_2\,
      CO(0) => \counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counter_reg[3]_i_1_n_4\,
      O(2) => \counter_reg[3]_i_1_n_5\,
      O(1) => \counter_reg[3]_i_1_n_6\,
      O(0) => \counter_reg[3]_i_1_n_7\,
      S(3) => \counter[3]_i_2_n_0\,
      S(2) => \counter[3]_i_3_n_0\,
      S(1) => \counter[3]_i_4_n_0\,
      S(0) => \counter[3]_i_5_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_7\,
      Q => \^counter_w\(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_6\,
      Q => \^counter_w\(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_5\,
      Q => \^counter_w\(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_4\,
      Q => \^counter_w\(7),
      R => clear
    );
\counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[3]_i_1_n_0\,
      CO(3) => \counter_reg[7]_i_1_n_0\,
      CO(2) => \counter_reg[7]_i_1_n_1\,
      CO(1) => \counter_reg[7]_i_1_n_2\,
      CO(0) => \counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[7]_i_1_n_4\,
      O(2) => \counter_reg[7]_i_1_n_5\,
      O(1) => \counter_reg[7]_i_1_n_6\,
      O(0) => \counter_reg[7]_i_1_n_7\,
      S(3) => \counter[7]_i_2_n_0\,
      S(2) => \counter[7]_i_3_n_0\,
      S(1) => \counter[7]_i_4_n_0\,
      S(0) => \counter[7]_i_5_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_7\,
      Q => \^counter_w\(8),
      R => clear
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_6\,
      Q => \^counter_w\(9),
      R => clear
    );
\frame0_raddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA000800080008"
    )
        port map (
      I0 => store_new_data_states(0),
      I1 => \frame0_raddr[0]_i_3_n_0\,
      I2 => \frame0_raddr[0]_i_4_n_0\,
      I3 => \frame0_raddr[0]_i_5_n_0\,
      I4 => s00_axis_tvalid,
      I5 => s00_axis_tready,
      O => \frame0_raddr[0]_i_1_n_0\
    );
\frame0_raddr[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => frame0_raddr_reg(0),
      O => \frame0_raddr[0]_i_10_n_0\
    );
\frame0_raddr[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"333333FEFFFFFFFF"
    )
        port map (
      I0 => frame0_raddr_reg(12),
      I1 => frame0_raddr_reg(18),
      I2 => frame0_raddr_reg(13),
      I3 => frame0_raddr_reg(17),
      I4 => frame0_raddr_reg(15),
      I5 => \frame0_raddr[0]_i_18_n_0\,
      O => \frame0_raddr[0]_i_11_n_0\
    );
\frame0_raddr[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => frame0_raddr_reg(12),
      I1 => frame0_raddr_reg(0),
      I2 => frame0_raddr_reg(14),
      I3 => frame0_raddr_reg(15),
      I4 => frame0_raddr_reg(17),
      O => \frame0_raddr[0]_i_12_n_0\
    );
\frame0_raddr[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554555500010000"
    )
        port map (
      I0 => frame0_raddr_reg(14),
      I1 => \frame0_waddr_counter[18]_i_10_n_0\,
      I2 => frame0_raddr_reg(9),
      I3 => \frame0_waddr_counter[18]_i_8_n_0\,
      I4 => \frame0_raddr[0]_i_3_n_0\,
      I5 => frame0_raddr_reg(12),
      O => \frame0_raddr[0]_i_13_n_0\
    );
\frame0_raddr[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => frame0_raddr_reg(16),
      I1 => frame0_raddr_reg(18),
      O => \frame0_raddr[0]_i_14_n_0\
    );
\frame0_raddr[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAEEEEEEBE"
    )
        port map (
      I0 => \frame0_raddr[0]_i_12_n_0\,
      I1 => frame0_raddr_reg(12),
      I2 => \frame0_raddr[0]_i_3_n_0\,
      I3 => \frame0_waddr_counter[18]_i_8_n_0\,
      I4 => \frame0_raddr[0]_i_19_n_0\,
      I5 => frame0_raddr_reg(14),
      O => \frame0_raddr[0]_i_15_n_0\
    );
\frame0_raddr[0]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \frame0_raddr[0]_i_24_n_0\,
      I1 => \frame0_raddr[0]_i_25_n_0\,
      I2 => \frame0_raddr[0]_i_26_n_0\,
      I3 => \frame0_raddr[0]_i_27_n_0\,
      I4 => \frame0_raddr[0]_i_28_n_0\,
      O => \frame0_raddr[0]_i_17_n_0\
    );
\frame0_raddr[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFBFBFB"
    )
        port map (
      I0 => frame0_raddr_reg(14),
      I1 => frame0_raddr_reg(15),
      I2 => frame0_raddr_reg(17),
      I3 => frame0_raddr_reg(12),
      I4 => frame0_raddr_reg(13),
      I5 => frame0_raddr_reg(16),
      O => \frame0_raddr[0]_i_18_n_0\
    );
\frame0_raddr[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame0_raddr_reg(9),
      I1 => frame0_raddr_reg(1),
      I2 => frame0_raddr_reg(3),
      I3 => frame0_raddr_reg(2),
      O => \frame0_raddr[0]_i_19_n_0\
    );
\frame0_raddr[0]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(4),
      O => \frame0_raddr[0]_i_20_n_0\
    );
\frame0_raddr[0]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(3),
      O => \frame0_raddr[0]_i_21_n_0\
    );
\frame0_raddr[0]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(2),
      O => \frame0_raddr[0]_i_22_n_0\
    );
\frame0_raddr[0]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(1),
      O => \frame0_raddr[0]_i_23_n_0\
    );
\frame0_raddr[0]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame0_raddr_reg(11),
      I1 => frame0_raddr_reg(10),
      I2 => frame0_raddr_reg(9),
      I3 => frame0_raddr_reg(8),
      O => \frame0_raddr[0]_i_24_n_0\
    );
\frame0_raddr[0]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => frame0_raddr_reg(17),
      I1 => frame0_raddr_reg(14),
      I2 => frame0_raddr_reg(15),
      I3 => frame0_raddr_reg(12),
      O => \frame0_raddr[0]_i_25_n_0\
    );
\frame0_raddr[0]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => frame0_raddr_reg(16),
      I1 => frame0_raddr_reg(1),
      I2 => frame0_raddr_reg(3),
      I3 => frame0_raddr_reg(2),
      O => \frame0_raddr[0]_i_26_n_0\
    );
\frame0_raddr[0]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => frame0_raddr_reg(5),
      I1 => frame0_raddr_reg(4),
      I2 => frame0_raddr_reg(7),
      I3 => frame0_raddr_reg(6),
      O => \frame0_raddr[0]_i_27_n_0\
    );
\frame0_raddr[0]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      I1 => frame0_raddr_reg(0),
      I2 => frame0_raddr_reg(13),
      O => \frame0_raddr[0]_i_28_n_0\
    );
\frame0_raddr[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => frame0_raddr_reg(8),
      I1 => frame0_raddr_reg(7),
      I2 => frame0_raddr_reg(11),
      I3 => frame0_raddr_reg(10),
      O => \frame0_raddr[0]_i_3_n_0\
    );
\frame0_raddr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_8_n_0\,
      I1 => frame0_raddr_reg(3),
      I2 => frame0_raddr_reg(2),
      I3 => frame0_raddr_reg(17),
      I4 => frame0_raddr_reg(9),
      I5 => frame0_raddr_reg(14),
      O => \frame0_raddr[0]_i_4_n_0\
    );
\frame0_raddr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFFFFFFFFFFF"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      I1 => frame0_raddr_reg(15),
      I2 => frame0_raddr_reg(1),
      I3 => frame0_raddr_reg(16),
      I4 => frame0_raddr_reg(12),
      I5 => frame0_raddr_reg(13),
      O => \frame0_raddr[0]_i_5_n_0\
    );
\frame0_raddr[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70707077"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      I1 => frame0_raddr_reg(16),
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_12_n_0\,
      I4 => \frame0_raddr[0]_i_13_n_0\,
      O => frame0_waddr_counter1
    );
\frame0_raddr[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(3),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(3),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[0]_i_7_n_0\
    );
\frame0_raddr[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(2),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(2),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[0]_i_8_n_0\
    );
\frame0_raddr[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(1),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(1),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[0]_i_9_n_0\
    );
\frame0_raddr[12]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(13),
      O => \frame0_raddr[12]_i_10_n_0\
    );
\frame0_raddr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(15),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(15),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[12]_i_2_n_0\
    );
\frame0_raddr[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(14),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(14),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[12]_i_3_n_0\
    );
\frame0_raddr[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(13),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(13),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[12]_i_4_n_0\
    );
\frame0_raddr[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(12),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(12),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[12]_i_5_n_0\
    );
\frame0_raddr[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(16),
      O => \frame0_raddr[12]_i_7_n_0\
    );
\frame0_raddr[12]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(15),
      O => \frame0_raddr[12]_i_8_n_0\
    );
\frame0_raddr[12]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(14),
      O => \frame0_raddr[12]_i_9_n_0\
    );
\frame0_raddr[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022AFAA2022"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      I1 => frame0_raddr_reg(16),
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(18),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[16]_i_2_n_0\
    );
\frame0_raddr[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(17),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(17),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[16]_i_3_n_0\
    );
\frame0_raddr[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444CFCC4444"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      I1 => frame0_raddr_reg(16),
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(16),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[16]_i_4_n_0\
    );
\frame0_raddr[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(18),
      O => \frame0_raddr[16]_i_6_n_0\
    );
\frame0_raddr[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(17),
      O => \frame0_raddr[16]_i_7_n_0\
    );
\frame0_raddr[4]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(5),
      O => \frame0_raddr[4]_i_10_n_0\
    );
\frame0_raddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(7),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(7),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[4]_i_2_n_0\
    );
\frame0_raddr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(6),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(6),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[4]_i_3_n_0\
    );
\frame0_raddr[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(5),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(5),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[4]_i_4_n_0\
    );
\frame0_raddr[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(4),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(4),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[4]_i_5_n_0\
    );
\frame0_raddr[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(8),
      O => \frame0_raddr[4]_i_7_n_0\
    );
\frame0_raddr[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(7),
      O => \frame0_raddr[4]_i_8_n_0\
    );
\frame0_raddr[4]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(6),
      O => \frame0_raddr[4]_i_9_n_0\
    );
\frame0_raddr[8]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(9),
      O => \frame0_raddr[8]_i_10_n_0\
    );
\frame0_raddr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(11),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(11),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[8]_i_2_n_0\
    );
\frame0_raddr[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(10),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(10),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[8]_i_3_n_0\
    );
\frame0_raddr[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(9),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(9),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[8]_i_4_n_0\
    );
\frame0_raddr[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20222022EFEE2022"
    )
        port map (
      I0 => frame0_raddr_reg(8),
      I1 => \frame0_raddr[0]_i_14_n_0\,
      I2 => \frame0_raddr[0]_i_11_n_0\,
      I3 => \frame0_raddr[0]_i_15_n_0\,
      I4 => frame0_raddr0(8),
      I5 => \frame0_raddr[0]_i_17_n_0\,
      O => \frame0_raddr[8]_i_5_n_0\
    );
\frame0_raddr[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(12),
      O => \frame0_raddr[8]_i_7_n_0\
    );
\frame0_raddr[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(11),
      O => \frame0_raddr[8]_i_8_n_0\
    );
\frame0_raddr[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_raddr_reg(10),
      O => \frame0_raddr[8]_i_9_n_0\
    );
\frame0_raddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[0]_i_2_n_7\,
      Q => frame0_raddr_reg(0),
      R => clear
    );
\frame0_raddr_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame0_raddr_reg[0]_i_16_n_0\,
      CO(2) => \frame0_raddr_reg[0]_i_16_n_1\,
      CO(1) => \frame0_raddr_reg[0]_i_16_n_2\,
      CO(0) => \frame0_raddr_reg[0]_i_16_n_3\,
      CYINIT => frame0_raddr_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame0_raddr0(4 downto 1),
      S(3) => \frame0_raddr[0]_i_20_n_0\,
      S(2) => \frame0_raddr[0]_i_21_n_0\,
      S(1) => \frame0_raddr[0]_i_22_n_0\,
      S(0) => \frame0_raddr[0]_i_23_n_0\
    );
\frame0_raddr_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame0_raddr_reg[0]_i_2_n_0\,
      CO(2) => \frame0_raddr_reg[0]_i_2_n_1\,
      CO(1) => \frame0_raddr_reg[0]_i_2_n_2\,
      CO(0) => \frame0_raddr_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => frame0_waddr_counter1,
      O(3) => \frame0_raddr_reg[0]_i_2_n_4\,
      O(2) => \frame0_raddr_reg[0]_i_2_n_5\,
      O(1) => \frame0_raddr_reg[0]_i_2_n_6\,
      O(0) => \frame0_raddr_reg[0]_i_2_n_7\,
      S(3) => \frame0_raddr[0]_i_7_n_0\,
      S(2) => \frame0_raddr[0]_i_8_n_0\,
      S(1) => \frame0_raddr[0]_i_9_n_0\,
      S(0) => \frame0_raddr[0]_i_10_n_0\
    );
\frame0_raddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[8]_i_1_n_5\,
      Q => frame0_raddr_reg(10),
      R => clear
    );
\frame0_raddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[8]_i_1_n_4\,
      Q => frame0_raddr_reg(11),
      R => clear
    );
\frame0_raddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[12]_i_1_n_7\,
      Q => frame0_raddr_reg(12),
      R => clear
    );
\frame0_raddr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[8]_i_1_n_0\,
      CO(3) => \frame0_raddr_reg[12]_i_1_n_0\,
      CO(2) => \frame0_raddr_reg[12]_i_1_n_1\,
      CO(1) => \frame0_raddr_reg[12]_i_1_n_2\,
      CO(0) => \frame0_raddr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame0_raddr_reg[12]_i_1_n_4\,
      O(2) => \frame0_raddr_reg[12]_i_1_n_5\,
      O(1) => \frame0_raddr_reg[12]_i_1_n_6\,
      O(0) => \frame0_raddr_reg[12]_i_1_n_7\,
      S(3) => \frame0_raddr[12]_i_2_n_0\,
      S(2) => \frame0_raddr[12]_i_3_n_0\,
      S(1) => \frame0_raddr[12]_i_4_n_0\,
      S(0) => \frame0_raddr[12]_i_5_n_0\
    );
\frame0_raddr_reg[12]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[8]_i_6_n_0\,
      CO(3) => \frame0_raddr_reg[12]_i_6_n_0\,
      CO(2) => \frame0_raddr_reg[12]_i_6_n_1\,
      CO(1) => \frame0_raddr_reg[12]_i_6_n_2\,
      CO(0) => \frame0_raddr_reg[12]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame0_raddr0(16 downto 13),
      S(3) => \frame0_raddr[12]_i_7_n_0\,
      S(2) => \frame0_raddr[12]_i_8_n_0\,
      S(1) => \frame0_raddr[12]_i_9_n_0\,
      S(0) => \frame0_raddr[12]_i_10_n_0\
    );
\frame0_raddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[12]_i_1_n_6\,
      Q => frame0_raddr_reg(13),
      R => clear
    );
\frame0_raddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[12]_i_1_n_5\,
      Q => frame0_raddr_reg(14),
      R => clear
    );
\frame0_raddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[12]_i_1_n_4\,
      Q => frame0_raddr_reg(15),
      R => clear
    );
\frame0_raddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[16]_i_1_n_7\,
      Q => frame0_raddr_reg(16),
      R => clear
    );
\frame0_raddr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_frame0_raddr_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \frame0_raddr_reg[16]_i_1_n_2\,
      CO(0) => \frame0_raddr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_frame0_raddr_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \frame0_raddr_reg[16]_i_1_n_5\,
      O(1) => \frame0_raddr_reg[16]_i_1_n_6\,
      O(0) => \frame0_raddr_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => \frame0_raddr[16]_i_2_n_0\,
      S(1) => \frame0_raddr[16]_i_3_n_0\,
      S(0) => \frame0_raddr[16]_i_4_n_0\
    );
\frame0_raddr_reg[16]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[12]_i_6_n_0\,
      CO(3 downto 1) => \NLW_frame0_raddr_reg[16]_i_5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \frame0_raddr_reg[16]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_frame0_raddr_reg[16]_i_5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => frame0_raddr0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1) => \frame0_raddr[16]_i_6_n_0\,
      S(0) => \frame0_raddr[16]_i_7_n_0\
    );
\frame0_raddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[16]_i_1_n_6\,
      Q => frame0_raddr_reg(17),
      R => clear
    );
\frame0_raddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[16]_i_1_n_5\,
      Q => frame0_raddr_reg(18),
      R => clear
    );
\frame0_raddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[0]_i_2_n_6\,
      Q => frame0_raddr_reg(1),
      R => clear
    );
\frame0_raddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[0]_i_2_n_5\,
      Q => frame0_raddr_reg(2),
      R => clear
    );
\frame0_raddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[0]_i_2_n_4\,
      Q => frame0_raddr_reg(3),
      R => clear
    );
\frame0_raddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[4]_i_1_n_7\,
      Q => frame0_raddr_reg(4),
      R => clear
    );
\frame0_raddr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[0]_i_2_n_0\,
      CO(3) => \frame0_raddr_reg[4]_i_1_n_0\,
      CO(2) => \frame0_raddr_reg[4]_i_1_n_1\,
      CO(1) => \frame0_raddr_reg[4]_i_1_n_2\,
      CO(0) => \frame0_raddr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame0_raddr_reg[4]_i_1_n_4\,
      O(2) => \frame0_raddr_reg[4]_i_1_n_5\,
      O(1) => \frame0_raddr_reg[4]_i_1_n_6\,
      O(0) => \frame0_raddr_reg[4]_i_1_n_7\,
      S(3) => \frame0_raddr[4]_i_2_n_0\,
      S(2) => \frame0_raddr[4]_i_3_n_0\,
      S(1) => \frame0_raddr[4]_i_4_n_0\,
      S(0) => \frame0_raddr[4]_i_5_n_0\
    );
\frame0_raddr_reg[4]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[0]_i_16_n_0\,
      CO(3) => \frame0_raddr_reg[4]_i_6_n_0\,
      CO(2) => \frame0_raddr_reg[4]_i_6_n_1\,
      CO(1) => \frame0_raddr_reg[4]_i_6_n_2\,
      CO(0) => \frame0_raddr_reg[4]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame0_raddr0(8 downto 5),
      S(3) => \frame0_raddr[4]_i_7_n_0\,
      S(2) => \frame0_raddr[4]_i_8_n_0\,
      S(1) => \frame0_raddr[4]_i_9_n_0\,
      S(0) => \frame0_raddr[4]_i_10_n_0\
    );
\frame0_raddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[4]_i_1_n_6\,
      Q => frame0_raddr_reg(5),
      R => clear
    );
\frame0_raddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[4]_i_1_n_5\,
      Q => frame0_raddr_reg(6),
      R => clear
    );
\frame0_raddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[4]_i_1_n_4\,
      Q => frame0_raddr_reg(7),
      R => clear
    );
\frame0_raddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[8]_i_1_n_7\,
      Q => frame0_raddr_reg(8),
      R => clear
    );
\frame0_raddr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[4]_i_1_n_0\,
      CO(3) => \frame0_raddr_reg[8]_i_1_n_0\,
      CO(2) => \frame0_raddr_reg[8]_i_1_n_1\,
      CO(1) => \frame0_raddr_reg[8]_i_1_n_2\,
      CO(0) => \frame0_raddr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame0_raddr_reg[8]_i_1_n_4\,
      O(2) => \frame0_raddr_reg[8]_i_1_n_5\,
      O(1) => \frame0_raddr_reg[8]_i_1_n_6\,
      O(0) => \frame0_raddr_reg[8]_i_1_n_7\,
      S(3) => \frame0_raddr[8]_i_2_n_0\,
      S(2) => \frame0_raddr[8]_i_3_n_0\,
      S(1) => \frame0_raddr[8]_i_4_n_0\,
      S(0) => \frame0_raddr[8]_i_5_n_0\
    );
\frame0_raddr_reg[8]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_raddr_reg[4]_i_6_n_0\,
      CO(3) => \frame0_raddr_reg[8]_i_6_n_0\,
      CO(2) => \frame0_raddr_reg[8]_i_6_n_1\,
      CO(1) => \frame0_raddr_reg[8]_i_6_n_2\,
      CO(0) => \frame0_raddr_reg[8]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => frame0_raddr0(12 downto 9),
      S(3) => \frame0_raddr[8]_i_7_n_0\,
      S(2) => \frame0_raddr[8]_i_8_n_0\,
      S(1) => \frame0_raddr[8]_i_9_n_0\,
      S(0) => \frame0_raddr[8]_i_10_n_0\
    );
\frame0_raddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_raddr[0]_i_1_n_0\,
      D => \frame0_raddr_reg[8]_i_1_n_6\,
      Q => frame0_raddr_reg(9),
      R => clear
    );
\frame0_waddr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => frame0_raddr_reg(0),
      I1 => s00_axis_aresetn,
      I2 => \frame0_waddr_counter[18]_i_3_n_0\,
      O => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D500"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_3_n_0\,
      I1 => s00_axis_tvalid,
      I2 => s00_axis_tready,
      I3 => s00_axis_aresetn,
      O => \frame0_waddr[18]_i_2_n_0\
    );
\frame0_waddr_counter0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame0_waddr_counter0_inferred__1/i__carry_n_0\,
      CO(2) => \frame0_waddr_counter0_inferred__1/i__carry_n_1\,
      CO(1) => \frame0_waddr_counter0_inferred__1/i__carry_n_2\,
      CO(0) => \frame0_waddr_counter0_inferred__1/i__carry_n_3\,
      CYINIT => frame0_waddr_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\frame0_waddr_counter0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_waddr_counter0_inferred__1/i__carry_n_0\,
      CO(3) => \frame0_waddr_counter0_inferred__1/i__carry__0_n_0\,
      CO(2) => \frame0_waddr_counter0_inferred__1/i__carry__0_n_1\,
      CO(1) => \frame0_waddr_counter0_inferred__1/i__carry__0_n_2\,
      CO(0) => \frame0_waddr_counter0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\frame0_waddr_counter0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_waddr_counter0_inferred__1/i__carry__0_n_0\,
      CO(3) => \frame0_waddr_counter0_inferred__1/i__carry__1_n_0\,
      CO(2) => \frame0_waddr_counter0_inferred__1/i__carry__1_n_1\,
      CO(1) => \frame0_waddr_counter0_inferred__1/i__carry__1_n_2\,
      CO(0) => \frame0_waddr_counter0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\frame0_waddr_counter0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_waddr_counter0_inferred__1/i__carry__1_n_0\,
      CO(3) => \frame0_waddr_counter0_inferred__1/i__carry__2_n_0\,
      CO(2) => \frame0_waddr_counter0_inferred__1/i__carry__2_n_1\,
      CO(1) => \frame0_waddr_counter0_inferred__1/i__carry__2_n_2\,
      CO(0) => \frame0_waddr_counter0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\frame0_waddr_counter0_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame0_waddr_counter0_inferred__1/i__carry__2_n_0\,
      CO(3 downto 1) => \NLW_frame0_waddr_counter0_inferred__1/i__carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \frame0_waddr_counter0_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_frame0_waddr_counter0_inferred__1/i__carry__3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(18 downto 17),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__3_i_1_n_0\,
      S(0) => \i__carry__3_i_2_n_0\
    );
\frame0_waddr_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => store_new_data_states0,
      I1 => frame0_waddr_counter(0),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(0)
    );
\frame0_waddr_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(10),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(10)
    );
\frame0_waddr_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(11),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(11)
    );
\frame0_waddr_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(12),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(12)
    );
\frame0_waddr_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(13),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(13)
    );
\frame0_waddr_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(14),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(14)
    );
\frame0_waddr_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(15),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(15)
    );
\frame0_waddr_counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(16),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(16)
    );
\frame0_waddr_counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(17),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(17)
    );
\frame0_waddr_counter[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFD5"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_3_n_0\,
      I1 => s00_axis_tvalid,
      I2 => s00_axis_tready,
      I3 => store_new_data_states0,
      O => \frame0_waddr_counter[18]_i_1_n_0\
    );
\frame0_waddr_counter[18]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => frame0_raddr_reg(2),
      I1 => frame0_raddr_reg(3),
      I2 => frame0_raddr_reg(1),
      O => \frame0_waddr_counter[18]_i_10_n_0\
    );
\frame0_waddr_counter[18]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[8]\,
      I1 => \frame0_waddr_reg_n_0_[3]\,
      I2 => \frame0_waddr_reg_n_0_[11]\,
      I3 => \frame0_waddr_reg_n_0_[5]\,
      O => \frame0_waddr_counter[18]_i_11_n_0\
    );
\frame0_waddr_counter[18]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[4]\,
      I1 => \frame0_waddr_reg_n_0_[2]\,
      I2 => \frame0_waddr_reg_n_0_[9]\,
      I3 => store_new_data_states(0),
      O => \frame0_waddr_counter[18]_i_12_n_0\
    );
\frame0_waddr_counter[18]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[14]\,
      I1 => \frame0_waddr_reg_n_0_[12]\,
      I2 => \frame0_waddr_reg_n_0_[15]\,
      I3 => \frame0_waddr_reg_n_0_[7]\,
      O => \frame0_waddr_counter[18]_i_13_n_0\
    );
\frame0_waddr_counter[18]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[1]\,
      I1 => \frame0_waddr_reg_n_0_[17]\,
      I2 => \frame0_waddr_reg_n_0_[18]\,
      I3 => \frame0_waddr_reg_n_0_[0]\,
      O => \frame0_waddr_counter[18]_i_14_n_0\
    );
\frame0_waddr_counter[18]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[13]\,
      I1 => \frame0_waddr_reg_n_0_[10]\,
      I2 => \frame0_waddr_reg_n_0_[6]\,
      I3 => \frame0_waddr_reg_n_0_[16]\,
      O => \frame0_waddr_counter[18]_i_15_n_0\
    );
\frame0_waddr_counter[18]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[10]\,
      I1 => \frame0_waddr_reg_n_0_[5]\,
      I2 => \frame0_waddr_reg_n_0_[15]\,
      I3 => \frame0_waddr_reg_n_0_[1]\,
      O => \frame0_waddr_counter[18]_i_16_n_0\
    );
\frame0_waddr_counter[18]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[9]\,
      I1 => \frame0_waddr_reg_n_0_[6]\,
      I2 => \frame0_waddr_reg_n_0_[13]\,
      I3 => \frame0_waddr_reg_n_0_[0]\,
      O => \frame0_waddr_counter[18]_i_17_n_0\
    );
\frame0_waddr_counter[18]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[16]\,
      I1 => \frame0_waddr_reg_n_0_[12]\,
      I2 => \frame0_waddr_reg_n_0_[18]\,
      I3 => \frame0_waddr_reg_n_0_[17]\,
      O => \frame0_waddr_counter[18]_i_18_n_0\
    );
\frame0_waddr_counter[18]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[3]\,
      I1 => \frame0_waddr_reg_n_0_[7]\,
      I2 => \frame0_waddr_reg_n_0_[4]\,
      O => \frame0_waddr_counter[18]_i_19_n_0\
    );
\frame0_waddr_counter[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(18),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(18)
    );
\frame0_waddr_counter[18]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \frame0_waddr_reg_n_0_[8]\,
      I1 => \frame0_waddr_reg_n_0_[14]\,
      I2 => \frame0_waddr_reg_n_0_[11]\,
      I3 => \frame0_waddr_reg_n_0_[2]\,
      O => \frame0_waddr_counter[18]_i_20_n_0\
    );
\frame0_waddr_counter[18]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => frame0_raddr_reg(16),
      I1 => frame0_raddr_reg(17),
      I2 => frame0_raddr_reg(15),
      I3 => frame0_raddr_reg(14),
      O => \frame0_waddr_counter[18]_i_21_n_0\
    );
\frame0_waddr_counter[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF7FFFF"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_7_n_0\,
      I1 => \frame0_raddr[0]_i_3_n_0\,
      I2 => \frame0_waddr_counter[18]_i_8_n_0\,
      I3 => frame0_raddr_reg(16),
      I4 => \frame0_waddr_counter[18]_i_9_n_0\,
      I5 => \frame0_waddr_counter[18]_i_10_n_0\,
      O => \frame0_waddr_counter[18]_i_3_n_0\
    );
\frame0_waddr_counter[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_11_n_0\,
      I1 => \frame0_waddr_counter[18]_i_12_n_0\,
      I2 => \frame0_waddr_counter[18]_i_13_n_0\,
      I3 => \frame0_waddr_counter[18]_i_14_n_0\,
      I4 => \frame0_waddr_counter[18]_i_15_n_0\,
      O => store_new_data_states0
    );
\frame0_waddr_counter[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_16_n_0\,
      I1 => \frame0_waddr_counter[18]_i_17_n_0\,
      I2 => \frame0_waddr_counter[18]_i_18_n_0\,
      I3 => \frame0_waddr_counter[18]_i_19_n_0\,
      I4 => \frame0_waddr_counter[18]_i_20_n_0\,
      I5 => store_new_data_states(0),
      O => \frame0_waddr_counter[18]_i_5_n_0\
    );
\frame0_waddr_counter[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => frame0_raddr_reg(0),
      I1 => \frame0_waddr_counter[18]_i_10_n_0\,
      I2 => \frame0_waddr_counter[18]_i_21_n_0\,
      I3 => \frame0_waddr_counter[18]_i_8_n_0\,
      I4 => \frame0_raddr[0]_i_3_n_0\,
      I5 => \frame0_waddr_counter[18]_i_7_n_0\,
      O => \frame0_waddr_counter[18]_i_6_n_0\
    );
\frame0_waddr_counter[18]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => store_new_data_states(0),
      I1 => frame0_raddr_reg(9),
      I2 => frame0_raddr_reg(18),
      I3 => frame0_raddr_reg(12),
      I4 => frame0_raddr_reg(13),
      O => \frame0_waddr_counter[18]_i_7_n_0\
    );
\frame0_waddr_counter[18]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => frame0_raddr_reg(6),
      I1 => frame0_raddr_reg(5),
      I2 => frame0_raddr_reg(4),
      O => \frame0_waddr_counter[18]_i_8_n_0\
    );
\frame0_waddr_counter[18]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => frame0_raddr_reg(14),
      I1 => frame0_raddr_reg(15),
      I2 => frame0_raddr_reg(17),
      O => \frame0_waddr_counter[18]_i_9_n_0\
    );
\frame0_waddr_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(1),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(1)
    );
\frame0_waddr_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(2),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(2)
    );
\frame0_waddr_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(3),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(3)
    );
\frame0_waddr_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(4),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(4)
    );
\frame0_waddr_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(5),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(5)
    );
\frame0_waddr_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(6),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(6)
    );
\frame0_waddr_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(7),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(7)
    );
\frame0_waddr_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(8),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(8)
    );
\frame0_waddr_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \frame0_waddr_counter[18]_i_5_n_0\,
      I1 => data0(9),
      I2 => \frame0_waddr_counter[18]_i_6_n_0\,
      O => p_2_in(9)
    );
\frame0_waddr_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(0),
      Q => frame0_waddr_counter(0),
      R => clear
    );
\frame0_waddr_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(10),
      Q => frame0_waddr_counter(10),
      R => clear
    );
\frame0_waddr_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(11),
      Q => frame0_waddr_counter(11),
      R => clear
    );
\frame0_waddr_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(12),
      Q => frame0_waddr_counter(12),
      R => clear
    );
\frame0_waddr_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(13),
      Q => frame0_waddr_counter(13),
      R => clear
    );
\frame0_waddr_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(14),
      Q => frame0_waddr_counter(14),
      R => clear
    );
\frame0_waddr_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(15),
      Q => frame0_waddr_counter(15),
      R => clear
    );
\frame0_waddr_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(16),
      Q => frame0_waddr_counter(16),
      R => clear
    );
\frame0_waddr_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(17),
      Q => frame0_waddr_counter(17),
      R => clear
    );
\frame0_waddr_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(18),
      Q => frame0_waddr_counter(18),
      R => clear
    );
\frame0_waddr_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(1),
      Q => frame0_waddr_counter(1),
      R => clear
    );
\frame0_waddr_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(2),
      Q => frame0_waddr_counter(2),
      R => clear
    );
\frame0_waddr_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(3),
      Q => frame0_waddr_counter(3),
      R => clear
    );
\frame0_waddr_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(4),
      Q => frame0_waddr_counter(4),
      R => clear
    );
\frame0_waddr_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(5),
      Q => frame0_waddr_counter(5),
      R => clear
    );
\frame0_waddr_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(6),
      Q => frame0_waddr_counter(6),
      R => clear
    );
\frame0_waddr_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(7),
      Q => frame0_waddr_counter(7),
      R => clear
    );
\frame0_waddr_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(8),
      Q => frame0_waddr_counter(8),
      R => clear
    );
\frame0_waddr_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr_counter[18]_i_1_n_0\,
      D => p_2_in(9),
      Q => frame0_waddr_counter(9),
      R => clear
    );
\frame0_waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(0),
      Q => \frame0_waddr_reg_n_0_[0]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(10),
      Q => \frame0_waddr_reg_n_0_[10]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(11),
      Q => \frame0_waddr_reg_n_0_[11]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(12),
      Q => \frame0_waddr_reg_n_0_[12]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(13),
      Q => \frame0_waddr_reg_n_0_[13]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(14),
      Q => \frame0_waddr_reg_n_0_[14]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(15),
      Q => \frame0_waddr_reg_n_0_[15]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(16),
      Q => \frame0_waddr_reg_n_0_[16]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(17),
      Q => \frame0_waddr_reg_n_0_[17]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(18),
      Q => \frame0_waddr_reg_n_0_[18]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(1),
      Q => \frame0_waddr_reg_n_0_[1]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(2),
      Q => \frame0_waddr_reg_n_0_[2]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(3),
      Q => \frame0_waddr_reg_n_0_[3]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(4),
      Q => \frame0_waddr_reg_n_0_[4]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(5),
      Q => \frame0_waddr_reg_n_0_[5]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(6),
      Q => \frame0_waddr_reg_n_0_[6]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(7),
      Q => \frame0_waddr_reg_n_0_[7]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(8),
      Q => \frame0_waddr_reg_n_0_[8]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame0_waddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame0_waddr[18]_i_2_n_0\,
      D => frame0_waddr_counter(9),
      Q => \frame0_waddr_reg_n_0_[9]\,
      R => \frame0_waddr[18]_i_1_n_0\
    );
\frame_counter[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(11),
      O => \frame_counter[11]_i_2_n_0\
    );
\frame_counter[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(10),
      O => \frame_counter[11]_i_3_n_0\
    );
\frame_counter[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(9),
      O => \frame_counter[11]_i_4_n_0\
    );
\frame_counter[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(8),
      O => \frame_counter[11]_i_5_n_0\
    );
\frame_counter[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tuser,
      O => frame_counter0
    );
\frame_counter[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(15),
      O => \frame_counter[15]_i_3_n_0\
    );
\frame_counter[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(14),
      O => \frame_counter[15]_i_4_n_0\
    );
\frame_counter[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(13),
      O => \frame_counter[15]_i_5_n_0\
    );
\frame_counter[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(12),
      O => \frame_counter[15]_i_6_n_0\
    );
\frame_counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(3),
      O => \frame_counter[3]_i_2_n_0\
    );
\frame_counter[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(2),
      O => \frame_counter[3]_i_3_n_0\
    );
\frame_counter[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(1),
      O => \frame_counter[3]_i_4_n_0\
    );
\frame_counter[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^frame_counter_w\(0),
      O => \frame_counter[3]_i_5_n_0\
    );
\frame_counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(7),
      O => \frame_counter[7]_i_2_n_0\
    );
\frame_counter[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(6),
      O => \frame_counter[7]_i_3_n_0\
    );
\frame_counter[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(5),
      O => \frame_counter[7]_i_4_n_0\
    );
\frame_counter[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_counter_w\(4),
      O => \frame_counter[7]_i_5_n_0\
    );
\frame_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[3]_i_1_n_7\,
      Q => \^frame_counter_w\(0),
      R => clear
    );
\frame_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[11]_i_1_n_5\,
      Q => \^frame_counter_w\(10),
      R => clear
    );
\frame_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[11]_i_1_n_4\,
      Q => \^frame_counter_w\(11),
      R => clear
    );
\frame_counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[7]_i_1_n_0\,
      CO(3) => \frame_counter_reg[11]_i_1_n_0\,
      CO(2) => \frame_counter_reg[11]_i_1_n_1\,
      CO(1) => \frame_counter_reg[11]_i_1_n_2\,
      CO(0) => \frame_counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[11]_i_1_n_4\,
      O(2) => \frame_counter_reg[11]_i_1_n_5\,
      O(1) => \frame_counter_reg[11]_i_1_n_6\,
      O(0) => \frame_counter_reg[11]_i_1_n_7\,
      S(3) => \frame_counter[11]_i_2_n_0\,
      S(2) => \frame_counter[11]_i_3_n_0\,
      S(1) => \frame_counter[11]_i_4_n_0\,
      S(0) => \frame_counter[11]_i_5_n_0\
    );
\frame_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[15]_i_2_n_7\,
      Q => \^frame_counter_w\(12),
      R => clear
    );
\frame_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[15]_i_2_n_6\,
      Q => \^frame_counter_w\(13),
      R => clear
    );
\frame_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[15]_i_2_n_5\,
      Q => \^frame_counter_w\(14),
      R => clear
    );
\frame_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[15]_i_2_n_4\,
      Q => \^frame_counter_w\(15),
      R => clear
    );
\frame_counter_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[11]_i_1_n_0\,
      CO(3) => \NLW_frame_counter_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \frame_counter_reg[15]_i_2_n_1\,
      CO(1) => \frame_counter_reg[15]_i_2_n_2\,
      CO(0) => \frame_counter_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[15]_i_2_n_4\,
      O(2) => \frame_counter_reg[15]_i_2_n_5\,
      O(1) => \frame_counter_reg[15]_i_2_n_6\,
      O(0) => \frame_counter_reg[15]_i_2_n_7\,
      S(3) => \frame_counter[15]_i_3_n_0\,
      S(2) => \frame_counter[15]_i_4_n_0\,
      S(1) => \frame_counter[15]_i_5_n_0\,
      S(0) => \frame_counter[15]_i_6_n_0\
    );
\frame_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[3]_i_1_n_6\,
      Q => \^frame_counter_w\(1),
      R => clear
    );
\frame_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[3]_i_1_n_5\,
      Q => \^frame_counter_w\(2),
      R => clear
    );
\frame_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[3]_i_1_n_4\,
      Q => \^frame_counter_w\(3),
      R => clear
    );
\frame_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_counter_reg[3]_i_1_n_0\,
      CO(2) => \frame_counter_reg[3]_i_1_n_1\,
      CO(1) => \frame_counter_reg[3]_i_1_n_2\,
      CO(0) => \frame_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_counter_reg[3]_i_1_n_4\,
      O(2) => \frame_counter_reg[3]_i_1_n_5\,
      O(1) => \frame_counter_reg[3]_i_1_n_6\,
      O(0) => \frame_counter_reg[3]_i_1_n_7\,
      S(3) => \frame_counter[3]_i_2_n_0\,
      S(2) => \frame_counter[3]_i_3_n_0\,
      S(1) => \frame_counter[3]_i_4_n_0\,
      S(0) => \frame_counter[3]_i_5_n_0\
    );
\frame_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[7]_i_1_n_7\,
      Q => \^frame_counter_w\(4),
      R => clear
    );
\frame_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[7]_i_1_n_6\,
      Q => \^frame_counter_w\(5),
      R => clear
    );
\frame_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[7]_i_1_n_5\,
      Q => \^frame_counter_w\(6),
      R => clear
    );
\frame_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[7]_i_1_n_4\,
      Q => \^frame_counter_w\(7),
      R => clear
    );
\frame_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_counter_reg[3]_i_1_n_0\,
      CO(3) => \frame_counter_reg[7]_i_1_n_0\,
      CO(2) => \frame_counter_reg[7]_i_1_n_1\,
      CO(1) => \frame_counter_reg[7]_i_1_n_2\,
      CO(0) => \frame_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_counter_reg[7]_i_1_n_4\,
      O(2) => \frame_counter_reg[7]_i_1_n_5\,
      O(1) => \frame_counter_reg[7]_i_1_n_6\,
      O(0) => \frame_counter_reg[7]_i_1_n_7\,
      S(3) => \frame_counter[7]_i_2_n_0\,
      S(2) => \frame_counter[7]_i_3_n_0\,
      S(1) => \frame_counter[7]_i_4_n_0\,
      S(0) => \frame_counter[7]_i_5_n_0\
    );
\frame_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[11]_i_1_n_7\,
      Q => \^frame_counter_w\(8),
      R => clear
    );
\frame_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => frame_counter0,
      D => \frame_counter_reg[11]_i_1_n_6\,
      Q => \^frame_counter_w\(9),
      R => clear
    );
\frame_wait[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(11),
      O => \frame_wait[11]_i_2_n_0\
    );
\frame_wait[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(10),
      O => \frame_wait[11]_i_3_n_0\
    );
\frame_wait[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(9),
      O => \frame_wait[11]_i_4_n_0\
    );
\frame_wait[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(8),
      O => \frame_wait[11]_i_5_n_0\
    );
\frame_wait[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(15),
      O => \frame_wait[15]_i_2_n_0\
    );
\frame_wait[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(14),
      O => \frame_wait[15]_i_3_n_0\
    );
\frame_wait[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(13),
      O => \frame_wait[15]_i_4_n_0\
    );
\frame_wait[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(12),
      O => \frame_wait[15]_i_5_n_0\
    );
\frame_wait[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(19),
      O => \frame_wait[19]_i_2_n_0\
    );
\frame_wait[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(18),
      O => \frame_wait[19]_i_3_n_0\
    );
\frame_wait[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(17),
      O => \frame_wait[19]_i_4_n_0\
    );
\frame_wait[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(16),
      O => \frame_wait[19]_i_5_n_0\
    );
\frame_wait[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(23),
      O => \frame_wait[23]_i_2_n_0\
    );
\frame_wait[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(22),
      O => \frame_wait[23]_i_3_n_0\
    );
\frame_wait[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(21),
      O => \frame_wait[23]_i_4_n_0\
    );
\frame_wait[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(20),
      O => \frame_wait[23]_i_5_n_0\
    );
\frame_wait[27]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(27),
      O => \frame_wait[27]_i_2_n_0\
    );
\frame_wait[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(26),
      O => \frame_wait[27]_i_3_n_0\
    );
\frame_wait[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(25),
      O => \frame_wait[27]_i_4_n_0\
    );
\frame_wait[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(24),
      O => \frame_wait[27]_i_5_n_0\
    );
\frame_wait[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \frame_wait[31]_i_4_n_0\,
      I1 => \frame_wait[31]_i_5_n_0\,
      I2 => \frame_wait[31]_i_6_n_0\,
      I3 => \^line_counter_w\(14),
      I4 => \^line_counter_w\(15),
      I5 => \^line_counter_w\(13),
      O => \frame_wait[31]_i_1_n_0\
    );
\frame_wait[31]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(30),
      O => \frame_wait[31]_i_10_n_0\
    );
\frame_wait[31]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(29),
      O => \frame_wait[31]_i_11_n_0\
    );
\frame_wait[31]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(28),
      O => \frame_wait[31]_i_12_n_0\
    );
\frame_wait[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \frame_wait[31]_i_4_n_0\,
      I1 => \frame_wait[31]_i_7_n_0\,
      I2 => \^line_counter_w\(2),
      I3 => \^line_counter_w\(1),
      I4 => s00_axis_tvalid,
      I5 => \frame_wait[31]_i_8_n_0\,
      O => \frame_wait[31]_i_2_n_0\
    );
\frame_wait[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^line_counter_w\(12),
      I1 => \^line_counter_w\(0),
      I2 => \^line_counter_w\(9),
      I3 => \^line_counter_w\(11),
      I4 => \^line_counter_w\(10),
      I5 => \^line_counter_w\(7),
      O => \frame_wait[31]_i_4_n_0\
    );
\frame_wait[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^line_counter_w\(1),
      I1 => \^line_counter_w\(8),
      I2 => \^line_counter_w\(4),
      I3 => s00_axis_aresetn,
      O => \frame_wait[31]_i_5_n_0\
    );
\frame_wait[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^line_counter_w\(2),
      I1 => \^line_counter_w\(6),
      I2 => \^line_counter_w\(3),
      I3 => \^line_counter_w\(5),
      O => \frame_wait[31]_i_6_n_0\
    );
\frame_wait[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^line_counter_w\(14),
      I1 => \^line_counter_w\(15),
      I2 => \^line_counter_w\(13),
      O => \frame_wait[31]_i_7_n_0\
    );
\frame_wait[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^line_counter_w\(3),
      I1 => \^line_counter_w\(4),
      I2 => s00_axis_aresetn,
      I3 => \^line_counter_w\(5),
      I4 => \^line_counter_w\(6),
      I5 => \^line_counter_w\(8),
      O => \frame_wait[31]_i_8_n_0\
    );
\frame_wait[31]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(31),
      O => \frame_wait[31]_i_9_n_0\
    );
\frame_wait[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(3),
      O => \frame_wait[3]_i_2_n_0\
    );
\frame_wait[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(2),
      O => \frame_wait[3]_i_3_n_0\
    );
\frame_wait[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(1),
      O => \frame_wait[3]_i_4_n_0\
    );
\frame_wait[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^frame_wait_w\(0),
      O => \frame_wait[3]_i_5_n_0\
    );
\frame_wait[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(7),
      O => \frame_wait[7]_i_2_n_0\
    );
\frame_wait[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(6),
      O => \frame_wait[7]_i_3_n_0\
    );
\frame_wait[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(5),
      O => \frame_wait[7]_i_4_n_0\
    );
\frame_wait[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^frame_wait_w\(4),
      O => \frame_wait[7]_i_5_n_0\
    );
\frame_wait_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[3]_i_1_n_7\,
      Q => \^frame_wait_w\(0),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[11]_i_1_n_5\,
      Q => \^frame_wait_w\(10),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[11]_i_1_n_4\,
      Q => \^frame_wait_w\(11),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[7]_i_1_n_0\,
      CO(3) => \frame_wait_reg[11]_i_1_n_0\,
      CO(2) => \frame_wait_reg[11]_i_1_n_1\,
      CO(1) => \frame_wait_reg[11]_i_1_n_2\,
      CO(0) => \frame_wait_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[11]_i_1_n_4\,
      O(2) => \frame_wait_reg[11]_i_1_n_5\,
      O(1) => \frame_wait_reg[11]_i_1_n_6\,
      O(0) => \frame_wait_reg[11]_i_1_n_7\,
      S(3) => \frame_wait[11]_i_2_n_0\,
      S(2) => \frame_wait[11]_i_3_n_0\,
      S(1) => \frame_wait[11]_i_4_n_0\,
      S(0) => \frame_wait[11]_i_5_n_0\
    );
\frame_wait_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[15]_i_1_n_7\,
      Q => \^frame_wait_w\(12),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[15]_i_1_n_6\,
      Q => \^frame_wait_w\(13),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[15]_i_1_n_5\,
      Q => \^frame_wait_w\(14),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[15]_i_1_n_4\,
      Q => \^frame_wait_w\(15),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[11]_i_1_n_0\,
      CO(3) => \frame_wait_reg[15]_i_1_n_0\,
      CO(2) => \frame_wait_reg[15]_i_1_n_1\,
      CO(1) => \frame_wait_reg[15]_i_1_n_2\,
      CO(0) => \frame_wait_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[15]_i_1_n_4\,
      O(2) => \frame_wait_reg[15]_i_1_n_5\,
      O(1) => \frame_wait_reg[15]_i_1_n_6\,
      O(0) => \frame_wait_reg[15]_i_1_n_7\,
      S(3) => \frame_wait[15]_i_2_n_0\,
      S(2) => \frame_wait[15]_i_3_n_0\,
      S(1) => \frame_wait[15]_i_4_n_0\,
      S(0) => \frame_wait[15]_i_5_n_0\
    );
\frame_wait_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[19]_i_1_n_7\,
      Q => \^frame_wait_w\(16),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[19]_i_1_n_6\,
      Q => \^frame_wait_w\(17),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[19]_i_1_n_5\,
      Q => \^frame_wait_w\(18),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[19]_i_1_n_4\,
      Q => \^frame_wait_w\(19),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[15]_i_1_n_0\,
      CO(3) => \frame_wait_reg[19]_i_1_n_0\,
      CO(2) => \frame_wait_reg[19]_i_1_n_1\,
      CO(1) => \frame_wait_reg[19]_i_1_n_2\,
      CO(0) => \frame_wait_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[19]_i_1_n_4\,
      O(2) => \frame_wait_reg[19]_i_1_n_5\,
      O(1) => \frame_wait_reg[19]_i_1_n_6\,
      O(0) => \frame_wait_reg[19]_i_1_n_7\,
      S(3) => \frame_wait[19]_i_2_n_0\,
      S(2) => \frame_wait[19]_i_3_n_0\,
      S(1) => \frame_wait[19]_i_4_n_0\,
      S(0) => \frame_wait[19]_i_5_n_0\
    );
\frame_wait_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[3]_i_1_n_6\,
      Q => \^frame_wait_w\(1),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[23]_i_1_n_7\,
      Q => \^frame_wait_w\(20),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[23]_i_1_n_6\,
      Q => \^frame_wait_w\(21),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[23]_i_1_n_5\,
      Q => \^frame_wait_w\(22),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[23]_i_1_n_4\,
      Q => \^frame_wait_w\(23),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[19]_i_1_n_0\,
      CO(3) => \frame_wait_reg[23]_i_1_n_0\,
      CO(2) => \frame_wait_reg[23]_i_1_n_1\,
      CO(1) => \frame_wait_reg[23]_i_1_n_2\,
      CO(0) => \frame_wait_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[23]_i_1_n_4\,
      O(2) => \frame_wait_reg[23]_i_1_n_5\,
      O(1) => \frame_wait_reg[23]_i_1_n_6\,
      O(0) => \frame_wait_reg[23]_i_1_n_7\,
      S(3) => \frame_wait[23]_i_2_n_0\,
      S(2) => \frame_wait[23]_i_3_n_0\,
      S(1) => \frame_wait[23]_i_4_n_0\,
      S(0) => \frame_wait[23]_i_5_n_0\
    );
\frame_wait_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[27]_i_1_n_7\,
      Q => \^frame_wait_w\(24),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[27]_i_1_n_6\,
      Q => \^frame_wait_w\(25),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[27]_i_1_n_5\,
      Q => \^frame_wait_w\(26),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[27]_i_1_n_4\,
      Q => \^frame_wait_w\(27),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[23]_i_1_n_0\,
      CO(3) => \frame_wait_reg[27]_i_1_n_0\,
      CO(2) => \frame_wait_reg[27]_i_1_n_1\,
      CO(1) => \frame_wait_reg[27]_i_1_n_2\,
      CO(0) => \frame_wait_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[27]_i_1_n_4\,
      O(2) => \frame_wait_reg[27]_i_1_n_5\,
      O(1) => \frame_wait_reg[27]_i_1_n_6\,
      O(0) => \frame_wait_reg[27]_i_1_n_7\,
      S(3) => \frame_wait[27]_i_2_n_0\,
      S(2) => \frame_wait[27]_i_3_n_0\,
      S(1) => \frame_wait[27]_i_4_n_0\,
      S(0) => \frame_wait[27]_i_5_n_0\
    );
\frame_wait_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[31]_i_3_n_7\,
      Q => \^frame_wait_w\(28),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[31]_i_3_n_6\,
      Q => \^frame_wait_w\(29),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[3]_i_1_n_5\,
      Q => \^frame_wait_w\(2),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[31]_i_3_n_5\,
      Q => \^frame_wait_w\(30),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[31]_i_3_n_4\,
      Q => \^frame_wait_w\(31),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[27]_i_1_n_0\,
      CO(3) => \NLW_frame_wait_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \frame_wait_reg[31]_i_3_n_1\,
      CO(1) => \frame_wait_reg[31]_i_3_n_2\,
      CO(0) => \frame_wait_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[31]_i_3_n_4\,
      O(2) => \frame_wait_reg[31]_i_3_n_5\,
      O(1) => \frame_wait_reg[31]_i_3_n_6\,
      O(0) => \frame_wait_reg[31]_i_3_n_7\,
      S(3) => \frame_wait[31]_i_9_n_0\,
      S(2) => \frame_wait[31]_i_10_n_0\,
      S(1) => \frame_wait[31]_i_11_n_0\,
      S(0) => \frame_wait[31]_i_12_n_0\
    );
\frame_wait_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[3]_i_1_n_4\,
      Q => \^frame_wait_w\(3),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \frame_wait_reg[3]_i_1_n_0\,
      CO(2) => \frame_wait_reg[3]_i_1_n_1\,
      CO(1) => \frame_wait_reg[3]_i_1_n_2\,
      CO(0) => \frame_wait_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \frame_wait_reg[3]_i_1_n_4\,
      O(2) => \frame_wait_reg[3]_i_1_n_5\,
      O(1) => \frame_wait_reg[3]_i_1_n_6\,
      O(0) => \frame_wait_reg[3]_i_1_n_7\,
      S(3) => \frame_wait[3]_i_2_n_0\,
      S(2) => \frame_wait[3]_i_3_n_0\,
      S(1) => \frame_wait[3]_i_4_n_0\,
      S(0) => \frame_wait[3]_i_5_n_0\
    );
\frame_wait_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[7]_i_1_n_7\,
      Q => \^frame_wait_w\(4),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[7]_i_1_n_6\,
      Q => \^frame_wait_w\(5),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[7]_i_1_n_5\,
      Q => \^frame_wait_w\(6),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[7]_i_1_n_4\,
      Q => \^frame_wait_w\(7),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \frame_wait_reg[3]_i_1_n_0\,
      CO(3) => \frame_wait_reg[7]_i_1_n_0\,
      CO(2) => \frame_wait_reg[7]_i_1_n_1\,
      CO(1) => \frame_wait_reg[7]_i_1_n_2\,
      CO(0) => \frame_wait_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \frame_wait_reg[7]_i_1_n_4\,
      O(2) => \frame_wait_reg[7]_i_1_n_5\,
      O(1) => \frame_wait_reg[7]_i_1_n_6\,
      O(0) => \frame_wait_reg[7]_i_1_n_7\,
      S(3) => \frame_wait[7]_i_2_n_0\,
      S(2) => \frame_wait[7]_i_3_n_0\,
      S(1) => \frame_wait[7]_i_4_n_0\,
      S(0) => \frame_wait[7]_i_5_n_0\
    );
\frame_wait_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[11]_i_1_n_7\,
      Q => \^frame_wait_w\(8),
      R => \frame_wait[31]_i_1_n_0\
    );
\frame_wait_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \frame_wait[31]_i_2_n_0\,
      D => \frame_wait_reg[11]_i_1_n_6\,
      Q => \^frame_wait_w\(9),
      R => \frame_wait[31]_i_1_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(8),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(7),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(6),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(5),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(12),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(11),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(10),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(9),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(16),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(15),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(14),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(13),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(18),
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(17),
      O => \i__carry__3_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(4),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => frame0_waddr_counter(1),
      O => \i__carry_i_4_n_0\
    );
l_e_d_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => l_e_d_INST_0_i_1_n_0,
      I1 => l_e_d_INST_0_i_2_n_0,
      I2 => l_e_d_INST_0_i_3_n_0,
      I3 => l_e_d_INST_0_i_4_n_0,
      O => l_e_d
    );
l_e_d_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => led_counter_reg(21),
      I1 => led_counter_reg(22),
      I2 => led_counter_reg(20),
      I3 => led_counter_reg(23),
      I4 => l_e_d_INST_0_i_5_n_0,
      O => l_e_d_INST_0_i_1_n_0
    );
l_e_d_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => led_counter_reg(27),
      I1 => led_counter_reg(26),
      I2 => led_counter_reg(25),
      I3 => led_counter_reg(24),
      I4 => l_e_d_INST_0_i_6_n_0,
      O => l_e_d_INST_0_i_2_n_0
    );
l_e_d_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => led_counter_reg(7),
      I1 => led_counter_reg(4),
      I2 => led_counter_reg(6),
      I3 => led_counter_reg(5),
      I4 => l_e_d_INST_0_i_7_n_0,
      O => l_e_d_INST_0_i_3_n_0
    );
l_e_d_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => led_counter_reg(11),
      I1 => led_counter_reg(10),
      I2 => led_counter_reg(9),
      I3 => led_counter_reg(8),
      I4 => l_e_d_INST_0_i_8_n_0,
      O => l_e_d_INST_0_i_4_n_0
    );
l_e_d_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_counter_reg(16),
      I1 => led_counter_reg(17),
      I2 => led_counter_reg(18),
      I3 => led_counter_reg(19),
      O => l_e_d_INST_0_i_5_n_0
    );
l_e_d_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_counter_reg(28),
      I1 => led_counter_reg(29),
      I2 => led_counter_reg(31),
      I3 => led_counter_reg(30),
      O => l_e_d_INST_0_i_6_n_0
    );
l_e_d_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_counter_reg(0),
      I1 => led_counter_reg(1),
      I2 => led_counter_reg(2),
      I3 => led_counter_reg(3),
      O => l_e_d_INST_0_i_7_n_0
    );
l_e_d_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => led_counter_reg(12),
      I1 => led_counter_reg(13),
      I2 => led_counter_reg(14),
      I3 => led_counter_reg(15),
      O => l_e_d_INST_0_i_8_n_0
    );
\led_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA8AA"
    )
        port map (
      I0 => store_new_data_states(0),
      I1 => l_e_d_INST_0_i_1_n_0,
      I2 => l_e_d_INST_0_i_2_n_0,
      I3 => l_e_d_INST_0_i_3_n_0,
      I4 => l_e_d_INST_0_i_4_n_0,
      O => \led_counter[0]_i_1_n_0\
    );
\led_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(0),
      O => \led_counter[0]_i_2_n_0\
    );
\led_counter[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(16),
      O => \led_counter[13]_i_2_n_0\
    );
\led_counter[13]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(15),
      O => \led_counter[13]_i_3_n_0\
    );
\led_counter[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(14),
      O => \led_counter[13]_i_4_n_0\
    );
\led_counter[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(13),
      O => \led_counter[13]_i_5_n_0\
    );
\led_counter[17]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(20),
      O => \led_counter[17]_i_2_n_0\
    );
\led_counter[17]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(19),
      O => \led_counter[17]_i_3_n_0\
    );
\led_counter[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(18),
      O => \led_counter[17]_i_4_n_0\
    );
\led_counter[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(17),
      O => \led_counter[17]_i_5_n_0\
    );
\led_counter[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(4),
      O => \led_counter[1]_i_2_n_0\
    );
\led_counter[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(3),
      O => \led_counter[1]_i_3_n_0\
    );
\led_counter[1]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(2),
      O => \led_counter[1]_i_4_n_0\
    );
\led_counter[1]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(1),
      O => \led_counter[1]_i_5_n_0\
    );
\led_counter[21]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(24),
      O => \led_counter[21]_i_2_n_0\
    );
\led_counter[21]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(23),
      O => \led_counter[21]_i_3_n_0\
    );
\led_counter[21]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(22),
      O => \led_counter[21]_i_4_n_0\
    );
\led_counter[21]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(21),
      O => \led_counter[21]_i_5_n_0\
    );
\led_counter[25]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(28),
      O => \led_counter[25]_i_2_n_0\
    );
\led_counter[25]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(27),
      O => \led_counter[25]_i_3_n_0\
    );
\led_counter[25]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(26),
      O => \led_counter[25]_i_4_n_0\
    );
\led_counter[25]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(25),
      O => \led_counter[25]_i_5_n_0\
    );
\led_counter[29]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(31),
      O => \led_counter[29]_i_2_n_0\
    );
\led_counter[29]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(30),
      O => \led_counter[29]_i_3_n_0\
    );
\led_counter[29]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(29),
      O => \led_counter[29]_i_4_n_0\
    );
\led_counter[5]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(8),
      O => \led_counter[5]_i_2_n_0\
    );
\led_counter[5]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(7),
      O => \led_counter[5]_i_3_n_0\
    );
\led_counter[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(6),
      O => \led_counter[5]_i_4_n_0\
    );
\led_counter[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(5),
      O => \led_counter[5]_i_5_n_0\
    );
\led_counter[9]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(12),
      O => \led_counter[9]_i_2_n_0\
    );
\led_counter[9]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(11),
      O => \led_counter[9]_i_3_n_0\
    );
\led_counter[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(10),
      O => \led_counter[9]_i_4_n_0\
    );
\led_counter[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => led_counter_reg(9),
      O => \led_counter[9]_i_5_n_0\
    );
\led_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter[0]_i_2_n_0\,
      Q => led_counter_reg(0),
      R => clear
    );
\led_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[9]_i_1_n_6\,
      Q => led_counter_reg(10),
      R => clear
    );
\led_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[9]_i_1_n_5\,
      Q => led_counter_reg(11),
      R => clear
    );
\led_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[9]_i_1_n_4\,
      Q => led_counter_reg(12),
      R => clear
    );
\led_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[13]_i_1_n_7\,
      Q => led_counter_reg(13),
      R => clear
    );
\led_counter_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[9]_i_1_n_0\,
      CO(3) => \led_counter_reg[13]_i_1_n_0\,
      CO(2) => \led_counter_reg[13]_i_1_n_1\,
      CO(1) => \led_counter_reg[13]_i_1_n_2\,
      CO(0) => \led_counter_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(16 downto 13),
      O(3) => \led_counter_reg[13]_i_1_n_4\,
      O(2) => \led_counter_reg[13]_i_1_n_5\,
      O(1) => \led_counter_reg[13]_i_1_n_6\,
      O(0) => \led_counter_reg[13]_i_1_n_7\,
      S(3) => \led_counter[13]_i_2_n_0\,
      S(2) => \led_counter[13]_i_3_n_0\,
      S(1) => \led_counter[13]_i_4_n_0\,
      S(0) => \led_counter[13]_i_5_n_0\
    );
\led_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[13]_i_1_n_6\,
      Q => led_counter_reg(14),
      R => clear
    );
\led_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[13]_i_1_n_5\,
      Q => led_counter_reg(15),
      R => clear
    );
\led_counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[13]_i_1_n_4\,
      Q => led_counter_reg(16),
      R => clear
    );
\led_counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[17]_i_1_n_7\,
      Q => led_counter_reg(17),
      R => clear
    );
\led_counter_reg[17]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[13]_i_1_n_0\,
      CO(3) => \led_counter_reg[17]_i_1_n_0\,
      CO(2) => \led_counter_reg[17]_i_1_n_1\,
      CO(1) => \led_counter_reg[17]_i_1_n_2\,
      CO(0) => \led_counter_reg[17]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(20 downto 17),
      O(3) => \led_counter_reg[17]_i_1_n_4\,
      O(2) => \led_counter_reg[17]_i_1_n_5\,
      O(1) => \led_counter_reg[17]_i_1_n_6\,
      O(0) => \led_counter_reg[17]_i_1_n_7\,
      S(3) => \led_counter[17]_i_2_n_0\,
      S(2) => \led_counter[17]_i_3_n_0\,
      S(1) => \led_counter[17]_i_4_n_0\,
      S(0) => \led_counter[17]_i_5_n_0\
    );
\led_counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[17]_i_1_n_6\,
      Q => led_counter_reg(18),
      R => clear
    );
\led_counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[17]_i_1_n_5\,
      Q => led_counter_reg(19),
      R => clear
    );
\led_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[1]_i_1_n_7\,
      Q => led_counter_reg(1),
      R => clear
    );
\led_counter_reg[1]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \led_counter_reg[1]_i_1_n_0\,
      CO(2) => \led_counter_reg[1]_i_1_n_1\,
      CO(1) => \led_counter_reg[1]_i_1_n_2\,
      CO(0) => \led_counter_reg[1]_i_1_n_3\,
      CYINIT => led_counter_reg(0),
      DI(3 downto 0) => led_counter_reg(4 downto 1),
      O(3) => \led_counter_reg[1]_i_1_n_4\,
      O(2) => \led_counter_reg[1]_i_1_n_5\,
      O(1) => \led_counter_reg[1]_i_1_n_6\,
      O(0) => \led_counter_reg[1]_i_1_n_7\,
      S(3) => \led_counter[1]_i_2_n_0\,
      S(2) => \led_counter[1]_i_3_n_0\,
      S(1) => \led_counter[1]_i_4_n_0\,
      S(0) => \led_counter[1]_i_5_n_0\
    );
\led_counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[17]_i_1_n_4\,
      Q => led_counter_reg(20),
      R => clear
    );
\led_counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[21]_i_1_n_7\,
      Q => led_counter_reg(21),
      R => clear
    );
\led_counter_reg[21]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[17]_i_1_n_0\,
      CO(3) => \led_counter_reg[21]_i_1_n_0\,
      CO(2) => \led_counter_reg[21]_i_1_n_1\,
      CO(1) => \led_counter_reg[21]_i_1_n_2\,
      CO(0) => \led_counter_reg[21]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(24 downto 21),
      O(3) => \led_counter_reg[21]_i_1_n_4\,
      O(2) => \led_counter_reg[21]_i_1_n_5\,
      O(1) => \led_counter_reg[21]_i_1_n_6\,
      O(0) => \led_counter_reg[21]_i_1_n_7\,
      S(3) => \led_counter[21]_i_2_n_0\,
      S(2) => \led_counter[21]_i_3_n_0\,
      S(1) => \led_counter[21]_i_4_n_0\,
      S(0) => \led_counter[21]_i_5_n_0\
    );
\led_counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[21]_i_1_n_6\,
      Q => led_counter_reg(22),
      R => clear
    );
\led_counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[21]_i_1_n_5\,
      Q => led_counter_reg(23),
      R => clear
    );
\led_counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[21]_i_1_n_4\,
      Q => led_counter_reg(24),
      R => clear
    );
\led_counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[25]_i_1_n_7\,
      Q => led_counter_reg(25),
      R => clear
    );
\led_counter_reg[25]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[21]_i_1_n_0\,
      CO(3) => \led_counter_reg[25]_i_1_n_0\,
      CO(2) => \led_counter_reg[25]_i_1_n_1\,
      CO(1) => \led_counter_reg[25]_i_1_n_2\,
      CO(0) => \led_counter_reg[25]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(28 downto 25),
      O(3) => \led_counter_reg[25]_i_1_n_4\,
      O(2) => \led_counter_reg[25]_i_1_n_5\,
      O(1) => \led_counter_reg[25]_i_1_n_6\,
      O(0) => \led_counter_reg[25]_i_1_n_7\,
      S(3) => \led_counter[25]_i_2_n_0\,
      S(2) => \led_counter[25]_i_3_n_0\,
      S(1) => \led_counter[25]_i_4_n_0\,
      S(0) => \led_counter[25]_i_5_n_0\
    );
\led_counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[25]_i_1_n_6\,
      Q => led_counter_reg(26),
      R => clear
    );
\led_counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[25]_i_1_n_5\,
      Q => led_counter_reg(27),
      R => clear
    );
\led_counter_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[25]_i_1_n_4\,
      Q => led_counter_reg(28),
      R => clear
    );
\led_counter_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[29]_i_1_n_7\,
      Q => led_counter_reg(29),
      R => clear
    );
\led_counter_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[25]_i_1_n_0\,
      CO(3 downto 2) => \NLW_led_counter_reg[29]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \led_counter_reg[29]_i_1_n_2\,
      CO(0) => \led_counter_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => led_counter_reg(30 downto 29),
      O(3) => \NLW_led_counter_reg[29]_i_1_O_UNCONNECTED\(3),
      O(2) => \led_counter_reg[29]_i_1_n_5\,
      O(1) => \led_counter_reg[29]_i_1_n_6\,
      O(0) => \led_counter_reg[29]_i_1_n_7\,
      S(3) => '0',
      S(2) => \led_counter[29]_i_2_n_0\,
      S(1) => \led_counter[29]_i_3_n_0\,
      S(0) => \led_counter[29]_i_4_n_0\
    );
\led_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[1]_i_1_n_6\,
      Q => led_counter_reg(2),
      R => clear
    );
\led_counter_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[29]_i_1_n_6\,
      Q => led_counter_reg(30),
      R => clear
    );
\led_counter_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[29]_i_1_n_5\,
      Q => led_counter_reg(31),
      R => clear
    );
\led_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[1]_i_1_n_5\,
      Q => led_counter_reg(3),
      R => clear
    );
\led_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[1]_i_1_n_4\,
      Q => led_counter_reg(4),
      R => clear
    );
\led_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[5]_i_1_n_7\,
      Q => led_counter_reg(5),
      R => clear
    );
\led_counter_reg[5]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[1]_i_1_n_0\,
      CO(3) => \led_counter_reg[5]_i_1_n_0\,
      CO(2) => \led_counter_reg[5]_i_1_n_1\,
      CO(1) => \led_counter_reg[5]_i_1_n_2\,
      CO(0) => \led_counter_reg[5]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(8 downto 5),
      O(3) => \led_counter_reg[5]_i_1_n_4\,
      O(2) => \led_counter_reg[5]_i_1_n_5\,
      O(1) => \led_counter_reg[5]_i_1_n_6\,
      O(0) => \led_counter_reg[5]_i_1_n_7\,
      S(3) => \led_counter[5]_i_2_n_0\,
      S(2) => \led_counter[5]_i_3_n_0\,
      S(1) => \led_counter[5]_i_4_n_0\,
      S(0) => \led_counter[5]_i_5_n_0\
    );
\led_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[5]_i_1_n_6\,
      Q => led_counter_reg(6),
      R => clear
    );
\led_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[5]_i_1_n_5\,
      Q => led_counter_reg(7),
      R => clear
    );
\led_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[5]_i_1_n_4\,
      Q => led_counter_reg(8),
      R => clear
    );
\led_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \led_counter[0]_i_1_n_0\,
      D => \led_counter_reg[9]_i_1_n_7\,
      Q => led_counter_reg(9),
      R => clear
    );
\led_counter_reg[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \led_counter_reg[5]_i_1_n_0\,
      CO(3) => \led_counter_reg[9]_i_1_n_0\,
      CO(2) => \led_counter_reg[9]_i_1_n_1\,
      CO(1) => \led_counter_reg[9]_i_1_n_2\,
      CO(0) => \led_counter_reg[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => led_counter_reg(12 downto 9),
      O(3) => \led_counter_reg[9]_i_1_n_4\,
      O(2) => \led_counter_reg[9]_i_1_n_5\,
      O(1) => \led_counter_reg[9]_i_1_n_6\,
      O(0) => \led_counter_reg[9]_i_1_n_7\,
      S(3) => \led_counter[9]_i_2_n_0\,
      S(2) => \led_counter[9]_i_3_n_0\,
      S(1) => \led_counter[9]_i_4_n_0\,
      S(0) => \led_counter[9]_i_5_n_0\
    );
\line_counter[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(11),
      O => \line_counter[11]_i_2_n_0\
    );
\line_counter[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(10),
      O => \line_counter[11]_i_3_n_0\
    );
\line_counter[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(9),
      O => \line_counter[11]_i_4_n_0\
    );
\line_counter[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(8),
      O => \line_counter[11]_i_5_n_0\
    );
\line_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s00_axis_tuser,
      I1 => s00_axis_tvalid,
      I2 => s00_axis_aresetn,
      O => \line_counter[15]_i_1_n_0\
    );
\line_counter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => s00_axis_tlast,
      O => line_counter0
    );
\line_counter[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(15),
      O => \line_counter[15]_i_4_n_0\
    );
\line_counter[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(14),
      O => \line_counter[15]_i_5_n_0\
    );
\line_counter[15]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(13),
      O => \line_counter[15]_i_6_n_0\
    );
\line_counter[15]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(12),
      O => \line_counter[15]_i_7_n_0\
    );
\line_counter[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(3),
      O => \line_counter[3]_i_2_n_0\
    );
\line_counter[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(2),
      O => \line_counter[3]_i_3_n_0\
    );
\line_counter[3]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(1),
      O => \line_counter[3]_i_4_n_0\
    );
\line_counter[3]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^line_counter_w\(0),
      O => \line_counter[3]_i_5_n_0\
    );
\line_counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(7),
      O => \line_counter[7]_i_2_n_0\
    );
\line_counter[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(6),
      O => \line_counter[7]_i_3_n_0\
    );
\line_counter[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(5),
      O => \line_counter[7]_i_4_n_0\
    );
\line_counter[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^line_counter_w\(4),
      O => \line_counter[7]_i_5_n_0\
    );
\line_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[3]_i_1_n_7\,
      Q => \^line_counter_w\(0),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[11]_i_1_n_5\,
      Q => \^line_counter_w\(10),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[11]_i_1_n_4\,
      Q => \^line_counter_w\(11),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_reg[7]_i_1_n_0\,
      CO(3) => \line_counter_reg[11]_i_1_n_0\,
      CO(2) => \line_counter_reg[11]_i_1_n_1\,
      CO(1) => \line_counter_reg[11]_i_1_n_2\,
      CO(0) => \line_counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_counter_reg[11]_i_1_n_4\,
      O(2) => \line_counter_reg[11]_i_1_n_5\,
      O(1) => \line_counter_reg[11]_i_1_n_6\,
      O(0) => \line_counter_reg[11]_i_1_n_7\,
      S(3) => \line_counter[11]_i_2_n_0\,
      S(2) => \line_counter[11]_i_3_n_0\,
      S(1) => \line_counter[11]_i_4_n_0\,
      S(0) => \line_counter[11]_i_5_n_0\
    );
\line_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[15]_i_3_n_7\,
      Q => \^line_counter_w\(12),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[15]_i_3_n_6\,
      Q => \^line_counter_w\(13),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[15]_i_3_n_5\,
      Q => \^line_counter_w\(14),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[15]_i_3_n_4\,
      Q => \^line_counter_w\(15),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_reg[11]_i_1_n_0\,
      CO(3) => \NLW_line_counter_reg[15]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \line_counter_reg[15]_i_3_n_1\,
      CO(1) => \line_counter_reg[15]_i_3_n_2\,
      CO(0) => \line_counter_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_counter_reg[15]_i_3_n_4\,
      O(2) => \line_counter_reg[15]_i_3_n_5\,
      O(1) => \line_counter_reg[15]_i_3_n_6\,
      O(0) => \line_counter_reg[15]_i_3_n_7\,
      S(3) => \line_counter[15]_i_4_n_0\,
      S(2) => \line_counter[15]_i_5_n_0\,
      S(1) => \line_counter[15]_i_6_n_0\,
      S(0) => \line_counter[15]_i_7_n_0\
    );
\line_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[3]_i_1_n_6\,
      Q => \^line_counter_w\(1),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[3]_i_1_n_5\,
      Q => \^line_counter_w\(2),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[3]_i_1_n_4\,
      Q => \^line_counter_w\(3),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \line_counter_reg[3]_i_1_n_0\,
      CO(2) => \line_counter_reg[3]_i_1_n_1\,
      CO(1) => \line_counter_reg[3]_i_1_n_2\,
      CO(0) => \line_counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \line_counter_reg[3]_i_1_n_4\,
      O(2) => \line_counter_reg[3]_i_1_n_5\,
      O(1) => \line_counter_reg[3]_i_1_n_6\,
      O(0) => \line_counter_reg[3]_i_1_n_7\,
      S(3) => \line_counter[3]_i_2_n_0\,
      S(2) => \line_counter[3]_i_3_n_0\,
      S(1) => \line_counter[3]_i_4_n_0\,
      S(0) => \line_counter[3]_i_5_n_0\
    );
\line_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[7]_i_1_n_7\,
      Q => \^line_counter_w\(4),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[7]_i_1_n_6\,
      Q => \^line_counter_w\(5),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[7]_i_1_n_5\,
      Q => \^line_counter_w\(6),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[7]_i_1_n_4\,
      Q => \^line_counter_w\(7),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \line_counter_reg[3]_i_1_n_0\,
      CO(3) => \line_counter_reg[7]_i_1_n_0\,
      CO(2) => \line_counter_reg[7]_i_1_n_1\,
      CO(1) => \line_counter_reg[7]_i_1_n_2\,
      CO(0) => \line_counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \line_counter_reg[7]_i_1_n_4\,
      O(2) => \line_counter_reg[7]_i_1_n_5\,
      O(1) => \line_counter_reg[7]_i_1_n_6\,
      O(0) => \line_counter_reg[7]_i_1_n_7\,
      S(3) => \line_counter[7]_i_2_n_0\,
      S(2) => \line_counter[7]_i_3_n_0\,
      S(1) => \line_counter[7]_i_4_n_0\,
      S(0) => \line_counter[7]_i_5_n_0\
    );
\line_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[11]_i_1_n_7\,
      Q => \^line_counter_w\(8),
      R => \line_counter[15]_i_1_n_0\
    );
\line_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => line_counter0,
      D => \line_counter_reg[11]_i_1_n_6\,
      Q => \^line_counter_w\(9),
      R => \line_counter[15]_i_1_n_0\
    );
\store_new_data_states[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => store_new_data_states0,
      I1 => store_new_data_states(0),
      O => \store_new_data_states[0]_i_1_n_0\
    );
\store_new_data_states_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \store_new_data_states[0]_i_1_n_0\,
      Q => store_new_data_states(0),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hdmi_motion_detection_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hdmi_motion_detection_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hdmi_motion_detection_0_0 : entity is "hdmi_motion_detection_0_0,motion_detection_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hdmi_motion_detection_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hdmi_motion_detection_0_0 : entity is "motion_detection_v1_0,Vivado 2016.4";
end hdmi_motion_detection_0_0;

architecture STRUCTURE of hdmi_motion_detection_0_0 is
begin
inst: entity work.hdmi_motion_detection_0_0_motion_detection_v1_0
     port map (
      counter_w(31 downto 0) => counter_w(31 downto 0),
      frame_counter_w(15 downto 0) => frame_counter_w(15 downto 0),
      frame_wait_w(31 downto 0) => frame_wait_w(31 downto 0),
      l_e_d => l_e_d,
      line_counter_w(15 downto 0) => line_counter_w(15 downto 0),
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tuser => s00_axis_tuser,
      s00_axis_tvalid => s00_axis_tvalid
    );
end STRUCTURE;
