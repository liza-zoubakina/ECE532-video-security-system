
`timescale 1 ns / 1 ps

module frame0
    #(
    parameter C_ADDR_WIDTH = 19,
    parameter C_DATA_WIDTH = 24
    ) (
    input clk, // clock
    input wen, // write enable
    input [C_DATA_WIDTH-1:0] wdata, // write data
    input [C_ADDR_WIDTH-1:0] waddr, // write address
    output [C_DATA_WIDTH-1:0] rdata_0, // read port 0 data
    input [C_ADDR_WIDTH-1:0] raddr_0 // read port 0 address
    );
  //  Xilinx Simple Dual Port Single Clock RAM
  //  This code implements a parameterizable SDP single clock memory.
  //  If a reset or enable is not necessary, it may be tied off or removed from the code.

  parameter RAM_WIDTH = 24;                  // Specify RAM data width
  parameter RAM_DEPTH = 307200;                  // Specify RAM depth (number of entries)
  parameter RAM_PERFORMANCE = "HIGH_PERFORMANCE"; // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
  parameter INIT_FILE = "";                       // Specify name/location of RAM initialization file if using one (leave blank if not)

  wire [C_ADDR_WIDTH-1:0] waddr; // Write address bus, width determined from RAM_DEPTH
  wire [C_ADDR_WIDTH-1:0] raddr_0; // Read address bus, width determined from RAM_DEPTH
  wire [C_DATA_WIDTH-1:0] wdata;          // RAM input data
  wire clk;                          // Clock
  wire wen;                           // Write enable
  wire [C_DATA_WIDTH-1:0] rdata_0;                  // RAM output data

//%%%%%%%%%%%%%change to distributed or block here to change ram style%%%%%%%%%%%%%%%%%%%%%
  (* ram_style="block" *) reg [C_DATA_WIDTH-1:0] ram0 [RAM_DEPTH-1:0];
  reg [C_DATA_WIDTH-1:0] ram_data0 = {C_DATA_WIDTH{1'b0}};
  

  // The following code either initializes the memory values to a specified file or to all zeros to match hardware
  generate
    if (INIT_FILE != "") begin: use_init_file
      initial
      begin
        $readmemh(INIT_FILE, ram0, 0, RAM_DEPTH-1);
      end
    end else begin: init_bram_to_zero
      integer ram_index;
      initial
      begin
        for (ram_index = 0; ram_index < RAM_DEPTH; ram_index = ram_index + 1) 
        begin
          ram0[ram_index] = {C_DATA_WIDTH{1'b0}};
        end
      end
    end
  endgenerate
 

  always @(posedge clk) begin
    if (wen)
    begin
      ram0[waddr] <= wdata;
    end
  
    ram_data0 <= ram0[raddr_0];
  end
  
  //these registers add 1 clock cycle latency. But if I dont add these and hook ram_data0 and ram_data1 with rdata_0 output wire, I get zzz as output in simulation
  reg [C_DATA_WIDTH-1:0] doutb_reg0 = {C_DATA_WIDTH{1'b0}};

  always @(posedge clk)
  begin
    doutb_reg0 <= ram_data0;
  end

  assign rdata_0 = doutb_reg0;

    
endmodule
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
// This code implements a parameterizable subtractor followed by multiplier which will be packed into DSP Block
(* use_dsp="yes" *) module dsp
#(
parameter SIZEIN = 8  // Size of inputs
) (
input wire clk,
input wire ce,
input wire rst,
input wire signed [SIZEIN:0]a,
input wire signed [SIZEIN:0]b,
input wire signed [SIZEIN:0]c,
input wire signed [SIZEIN:0] presubmult_out
);
//wire clk; // Clock
//wire ce;  // Clock enable
//wire rst; // Reset
//wire signed [SIZEIN-1:0] a;  // 1st Input to pre-subtractor
//wire signed [SIZEIN-1:0] b;  // 2nd input to pre-subtractor
//wire signed [SIZEIN-1:0] c;  // multiplier input
//wire signed [2*SIZEIN:0] presubmult_out;

// Declare registers for intermediate values
reg signed [SIZEIN:0] a_reg, b_reg, c_reg;
reg signed [SIZEIN:0]   add_reg;
reg signed [SIZEIN:0] m_reg, p_reg;

always @(posedge clk)
 if (!rst)
  begin
    a_reg   <= 0;
    b_reg   <= 0;
    c_reg   <= 0;
	add_reg <= 0;
    m_reg   <= 0;
    p_reg   <= 0;
  end
 else if (ce)
  begin
    a_reg   <= a;
    b_reg   <= b;
    c_reg   <= c;
    add_reg <= a - b;
    m_reg   <= add_reg * c_reg;
    p_reg   <= m_reg;
  end

assign presubmult_out = p_reg;

endmodule

///////////////////////////////////////////////////adder+multiplier/////////////////////////////
(* use_dsp="yes" *) module add_dsp
#(
parameter SIZEIN = 18  // Size of inputs
) (
input wire clk,
input wire ce,
input wire rst,
input wire signed [SIZEIN-1:0]a,
input wire signed [SIZEIN-1:0]b,
input wire signed [SIZEIN-1:0]c,
input wire signed [17:0] presubmult_out
);
//wire clk; // Clock
//wire ce;  // Clock enable
//wire rst; // Reset
//wire signed [SIZEIN-1:0] a;  // 1st Input to pre-subtractor
//wire signed [SIZEIN-1:0] b;  // 2nd input to pre-subtractor
//wire signed [SIZEIN-1:0] c;  // multiplier input
//wire signed [2*SIZEIN:0] presubmult_out;

// Declare registers for intermediate values
reg signed [SIZEIN-1:0] a_reg, b_reg, c_reg;
reg signed [SIZEIN-1:0]   add_reg;
reg signed [17:0] m_reg, p_reg;

always @(posedge clk)
 if (!rst)
  begin
    a_reg   <= 0;
    b_reg   <= 0;
    c_reg   <= 0;
	add_reg <= 0;
    m_reg   <= 0;
    p_reg   <= 0;
  end
 else if (ce)
  begin
    a_reg   <= a;
    b_reg   <= b;
    c_reg   <= c;
    add_reg <= a + b;
    m_reg   <= add_reg * c_reg;
    p_reg   <= m_reg;
  end

assign presubmult_out = p_reg;

endmodule



///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

module dsp_logic(input wire _clk, input wire _rst, input wire _ce, input wire [7:0]r1_a, input wire [7:0]r1_b, input wire [7:0]g1_a, input wire [7:0]g1_b, input wire [7:0]b1_a, input wire [7:0]b1_b, output wire [17:0]final_out);
//    wire _clk;
//    wire _rst;
//    wire _ce;
//    reg signed [7:0]r1_a;
//    reg signed [7:0]r1_b;
//    reg signed [7:0]_c;
    wire signed [8:0]r1_out;
    dsp r1(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, r1_a}),
    .b({1'b0, r1_b}),
    .c({9'd1}),
    .presubmult_out(r1_out)
    );
    
    reg signed [7:0]r2_a;
    reg signed [7:0]r2_b;
//    reg signed [7:0]r2_c;
    wire signed [8:0]r2_out;
    dsp r2(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, r1_a}),
    .b({1'b0, r1_b}),
    .c({9'd1}),
    .presubmult_out(r2_out)
    );
    
//    reg signed [7:0]g1_a;
//    reg signed [7:0]g1_b;
//    reg signed [7:0]g1_c;
    wire signed [8:0]g1_out;
    dsp g1(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, g1_a}),
    .b({1'b0, g1_b}),
    .c({9'd1}),
    .presubmult_out(g1_out)
    );
    
//    reg signed [7:0]g2_a;
//    reg signed [7:0]g2_b;
//    reg signed [7:0]g2_c;
    wire signed [8:0]g2_out;
    dsp g2(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, g1_a}),
    .b({1'b0, g1_b}),
    .c({9'd1}),
    .presubmult_out(g2_out)
    );
    
//    reg signed [7:0]b1_a;
//    reg signed [7:0]b1_b;
//    reg signed [7:0]b1_c;
    wire signed [8:0]b1_out;
    dsp b1(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, b1_a}),
    .b({1'b0, b1_b}),
    .c({9'd1}),
    .presubmult_out(b1_out)
    );
    
//    reg signed [7:0]b2_a;
//    reg signed [7:0]b2_b;
//    reg signed [7:0]b2_c;
    wire signed [8:0]b2_out;
    dsp b2(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({1'b0, b1_a}),
    .b({1'b0, b1_b}),
    .c({9'd1}),
    .presubmult_out(b2_out)
    );
    
    //////////////////////////////multipliers/////////////////////////////////////////////////////////
    wire signed [17:0]rsqr;
    add_dsp r_sqr(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out[8], r1_out}),
    .b(18'd0),
    .c({r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out[8], r2_out}),
    .presubmult_out(rsqr)
    );
    
    wire signed [17:0]gsqr;
    add_dsp g_sqr(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out[8], g1_out}),
    .b(18'd0),
    .c({g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out[8], g2_out}),
    .presubmult_out(gsqr)
    );
    
    wire signed [17:0]bsqr;
    add_dsp b_sqr(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a({b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out[8], b1_out}),
    .b(18'd0),
    .c({b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out[8], b2_out}),
    .presubmult_out(bsqr)
    );
    
    ///////////////////////////////final adders//////////
    
    wire signed [17:0]fsum1;
    add_dsp final_sum1(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a(rsqr),
    .b(gsqr),
    .c(18'd1),
    .presubmult_out(fsum1)
    );
    
    wire signed [17:0]fsum2;
    add_dsp final_sum2(
    .clk(_clk),
    .ce({1'b1}),
    .rst(_rst),
    .a(fsum1),
    .b(bsqr),
    .c(18'd1),
    .presubmult_out(fsum2)
    );
    assign final_out = fsum2;
    endmodule
    
    
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////

	module motion_detection_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
        input wire s00_axis_tuser,
//        output wire m00_axis_tuser,
        output wire [31:0]counter_w,
        output wire [15:0]line_counter_w,
        output wire [15:0]frame_counter_w,
        output wire [31:0] frame_wait_w,
        output wire l_e_d,
		// User ports ends
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		input wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid

		// Ports of Axi Master Bus Interface M00_AXIS
//		input wire  m00_axis_aclk,
//		input wire  m00_axis_aresetn,
//		output wire  m00_axis_tvalid,
//		output wire [C_M00_AXIS_TDATA_WIDTH-1 : 0] m00_axis_tdata,
//		output wire [(C_M00_AXIS_TDATA_WIDTH/8)-1 : 0] m00_axis_tstrb,
//		output wire  m00_axis_tlast,
//		input wire  m00_axis_tready
	);
//// Instantiation of Axi Bus Interface S00_AXIS
//	emptyaxi_v1_0_S00_AXIS # ( 
//		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH)
//	) emptyaxi_v1_0_S00_AXIS_inst (
//		.S_AXIS_ACLK(s00_axis_aclk),
//		.S_AXIS_ARESETN(s00_axis_aresetn),
//		.S_AXIS_TREADY(s00_axis_tready),
//		.S_AXIS_TDATA(s00_axis_tdata),
//		.S_AXIS_TSTRB(s00_axis_tstrb),
//		.S_AXIS_TLAST(s00_axis_tlast),
//		.S_AXIS_TVALID(s00_axis_tvalid)
//	);

//// Instantiation of Axi Bus Interface M00_AXIS
//	emptyaxi_v1_0_M00_AXIS # ( 
//		.C_M_AXIS_TDATA_WIDTH(C_M00_AXIS_TDATA_WIDTH),
//		.C_M_START_COUNT(C_M00_AXIS_START_COUNT)
//	) emptyaxi_v1_0_M00_AXIS_inst (
//		.M_AXIS_ACLK(m00_axis_aclk),
//		.M_AXIS_ARESETN(m00_axis_aresetn),
//		.M_AXIS_TVALID(m00_axis_tvalid),
//		.M_AXIS_TDATA(m00_axis_tdata),
//		.M_AXIS_TSTRB(m00_axis_tstrb),
//		.M_AXIS_TLAST(m00_axis_tlast),
//		.M_AXIS_TREADY(m00_axis_tready)
//	);

	// Add user logic here
//    assign s00_axis_tready = m00_axis_tready;
//    assign m00_axis_tdata[23:0] = s00_axis_tdata[23:0];
//    assign m00_axis_tdata[31:24] = 8'd0;
//    assign m00_axis_tlast = s00_axis_tlast;
//    assign m00_axis_tvalid = s00_axis_tvalid;
//    assign m00_axis_tuser = s00_axis_tuser;
    
    reg[31:0] counter;
    reg[15:0] frame_counter;
    reg[15:0] line_counter;
    reg pulsea;
    reg pulseb;
    reg [31:0] frame_wait;
    assign frame_wait_w = frame_wait;
    assign frame_counter_w = frame_counter;
    assign line_counter_w = line_counter;
    assign counter_w = counter;
    always @ (posedge s00_axis_aclk)
    begin
        if(!s00_axis_aresetn)
        begin
            counter <= 32'd0;
            frame_counter<=16'd0;
            line_counter<=16'd0;
            pulsea<=0;
            pulseb<=0;
        end
        else
        begin
            counter <= counter + 1;
            if(s00_axis_tuser==1 && s00_axis_tvalid)
            begin
                line_counter<=16'd0;
                frame_counter<=frame_counter+1;
            end
            else if(s00_axis_tlast==1 && s00_axis_tvalid)
            begin
                line_counter<=line_counter+1;
            end
            
           if(line_counter==480 && !s00_axis_tvalid)
           begin
            frame_wait <= frame_wait + 1;
           end
           else if (line_counter==16'd478)
           begin
            frame_wait<=16'd0;
           end
        end
    end
    
//    (* mark_debug = "true" *) wire sclk;
//    (* mark_debug = "true" *) wire [23:0]tdata;
//    (* mark_debug = "true" *) wire tready;
//    (* mark_debug = "true" *) wire tlast;
//    (* mark_debug = "true" *) wire tvalid;
//    (* mark_debug = "true" *) wire tuser;
    
//    assign sclk = s00_axis_aclk;
//    assign tdata=s00_axis_tdata;
//    assign tready = m00_axis_tready;
//    assign tlast = s00_axis_tlast;
//    assign tvalid = s00_axis_tvalid;
//    assign tuser = s00_axis_tuser;
//	// User logic ends
    reg frame0_wen;
    reg [18:0]frame0_waddr_counter;
    reg [18:0]frame0_waddr;
    reg [23:0]frame0_wdata;
    reg [18:0]frame0_raddr;
    wire [23:0]frame0_rdata;
    //reg s_tready;
    reg frame0_received;
    // a block ram to store incoming signals. 640x480
    //when tuser goes 1 then, turn on frame receved.
    //Then the incoming signals would be sent to fsm and compraed against this frame's signals.
    frame0 inst0(
    .clk(s00_axis_aclk), // clock
    .wen(frame0_wen), // write enable
    .wdata(frame0_wdata), // write data
    .waddr(frame0_waddr), // write address
    .rdata_0(frame0_rdata), // read port 0 data
    .raddr_0(frame0_raddr) // read port 0 address
    );
    
    
    //assign s00_axis_tready = s_tready;
    //store data FSM
    reg [3:0]store_new_data_states;
    reg prev_frame_done;
    reg [7:0] dsp_in_r;
    reg [7:0] dsp_in_r_prev;
    reg [7:0] dsp_in_g;
    reg [7:0] dsp_in_g_prev;
    reg [7:0] dsp_in_b;
    reg [7:0] dsp_in_b_prev;
    wire signed [17:0] dsp_out_final;
    reg signed [17:0] pixel_motion_val;
    reg [23:0] new_frame_pix_delay_reg_1;
    reg [23:0] new_frame_pix_delay_reg_2;
    reg [4:0] dsp_output_delay;
    reg [18:0]motion_pixel_count;
    reg [31:0] led_counter;
    reg v_d_1;
    reg v_d_2;
    reg v_d_3;
    reg v_d_4;
    reg v_d_5;
    reg v_d_6;
    reg v_d_7;
    reg v_d_8;
    reg v_d_9;
    reg v_d_10;
    reg v_d_11;
    reg v_d_12;
    reg v_d_13;
    reg v_d_14;
    reg v_d_15;
    
    
    
    
    ////////dsp_module/////////
    dsp_logic dsp_logic_inst0(
    ._clk(s00_axis_aclk), 
    ._rst(s00_axis_aresetn),
    ._ce(1'd1), 
    .r1_a(dsp_in_r), 
    .r1_b(dsp_in_r_prev), 
    .g1_a(dsp_in_g), 
    .g1_b(dsp_in_g_prev), 
    .b1_a(dsp_in_b), 
    .b1_b(dsp_in_b_prev), 
    .final_out(dsp_out_final)
    );
    
    assign l_e_d = (led_counter!=0) ? 1 : 0;
    
    //reg ram0_read_wait;
    always @ (posedge s00_axis_aclk)
    begin
        if(!s00_axis_aresetn)
        begin
            store_new_data_states<=0;
            frame0_waddr_counter<=0;
            //s_tready<=0;
            frame0_received<=0;
            prev_frame_done<=0;
            frame0_raddr<=0;
            dsp_output_delay<=0;
            motion_pixel_count<=0;
            new_frame_pix_delay_reg_1<=0;
            new_frame_pix_delay_reg_2<=0;
            led_counter <= 0;
            //ram0_read_wait<=0;
            v_d_1 <= 0;
            v_d_2 <= 0;
            v_d_3 <= 0;
            v_d_4 <= 0;
            v_d_5 <= 0;
            v_d_6 <= 0;
          
            v_d_7 <= 0;
            v_d_8 <= 0;
            v_d_9 <= 0;
            v_d_10 <= 0;
            v_d_11 <= 0;
            v_d_12 <= 0;
            v_d_13 <= 0;
            v_d_14 <= 0;
            v_d_15 <= 0;
        end
        
        else
        begin
            //delayed valid signal
            v_d_1 <= s00_axis_tvalid && s00_axis_tready;
            v_d_2 <= v_d_1;
            v_d_3 <= v_d_2;
            v_d_4 <= v_d_3;
            v_d_5 <= v_d_4;
            v_d_6 <= v_d_5;
            v_d_7 <= v_d_6;
            v_d_8 <= v_d_7;
            v_d_9 <= v_d_8;
            v_d_10 <= v_d_9;
            v_d_11 <= v_d_10;
            v_d_12 <= v_d_11;
            v_d_13 <= v_d_12;
            v_d_14 <= v_d_13;
            v_d_15 <= v_d_14;
            
            
            case (store_new_data_states)
            4'd0:
            begin
                /*
                raise ready,
                if Svalid is 1, enable wen of frame0 bram and wdata<=Swdata and frame0_waddr<=addr_counter, addr_counter+=1
                if Svalid = 0, wen=0
                */
                //s_tready<=1;
                if(s00_axis_tvalid && s00_axis_tready)
                begin
                    frame0_wen<=1;
                    frame0_wdata<=s00_axis_tdata;
                    frame0_waddr<=frame0_waddr_counter;
                    frame0_waddr_counter<=frame0_waddr_counter+1;
                end
                else
                begin
                    frame0_wen<=0;
                end
                
                if(frame0_waddr==19'd307199) //last frame pizel
                begin
                    //go to next state
                    store_new_data_states<=4'd1;
                    frame0_wen<=0;
                    frame0_waddr_counter<=0;
                end
                
                
            end
            4'd1:
            begin
                //wait for start of next frame
                if((s00_axis_tvalid && s00_axis_tready) || frame0_raddr==307200 || frame0_raddr==307201)
                //suplly dsp with pixels from block ram
                begin
                    if(frame0_raddr >= 2 && frame0_raddr <= 307200)
                    begin
                        
                        dsp_in_r_prev<=frame0_rdata[7:0];
                        dsp_in_g_prev<=frame0_rdata[15:8];
                        dsp_in_b_prev<=frame0_rdata[23:16];
                        
                        dsp_in_r <= new_frame_pix_delay_reg_2[7:0];
                        dsp_in_g <= new_frame_pix_delay_reg_2[15:8];
                        dsp_in_b <= new_frame_pix_delay_reg_2[23:16];
                        
                        //
                        frame0_raddr <= frame0_raddr+1;
                        new_frame_pix_delay_reg_1 <= s00_axis_tdata;
                        new_frame_pix_delay_reg_2 <= new_frame_pix_delay_reg_1;
                        
                        //
                        frame0_waddr_counter <= frame0_waddr_counter + 1;
                        frame0_waddr <= frame0_waddr_counter;
                        frame0_wdata <= s00_axis_tdata;
                    end
                    
                    
                    
                    else if(frame0_raddr == 307201)
                    begin
                        //last pixel in new_frame_pix_delay_reg2, 
                        //reset regsiters to initial state
                        frame0_wen <= 0;
                        frame0_waddr <= 0;
                        frame0_raddr <= 0;
                        frame0_waddr_counter<=0;
                        motion_pixel_count<=0;
                        new_frame_pix_delay_reg_1<=0;
                        new_frame_pix_delay_reg_2<=0;
                        
                    end
                    else //frame0_raddr = 0 and 1
                    begin
                        //
                        frame0_raddr <= frame0_raddr+1;
                        new_frame_pix_delay_reg_1 <= s00_axis_tdata;
                        new_frame_pix_delay_reg_2 <= new_frame_pix_delay_reg_1;
                        //if last pixel not in new_frame_pix_delay_reg2 then just:  
                        frame0_wen <= 1;
                        frame0_waddr_counter <= frame0_waddr_counter + 1;
                        frame0_waddr <= frame0_waddr_counter;
                        frame0_wdata <= s00_axis_tdata;
                        
                    end
                    
                end
                
//                if(dsp_output_delay >= 5'd12)
//                begin
                    //test each dsp output for threshold. If its greater than threshold then increment counter
                    if( dsp_out_final >= 18'd45000 )
                    begin
                        if(s00_axis_tuser) //reset motion pixel coutnt to 0 at start of frame
                        begin
                        motion_pixel_count<=0;
                        end
                        else if(v_d_15)
                        begin
                        motion_pixel_count <= motion_pixel_count + 1;
                        end
                        else
                        begin
                        motion_pixel_count<=motion_pixel_count;
                        end
                    end
                //end
                
                if(motion_pixel_count>=10000)
                begin
                    led_counter<=100000000;
                end
                else if(led_counter>0)
                begin
                    led_counter <= led_counter - 1;
                end
                
            end
            4'd2:
            begin
            end
            4'd3:
            begin
            end
            4'd4:
            begin
            end
            4'd5:
            begin
            end
            4'd6:
            begin
            end
            4'd7:
            begin
            end
            4'd8:
            begin
            end
            4'd9:
            begin
            end
            4'd10:
            begin
            end
            4'd11:
            begin
            end
            4'd12:
            begin
            end
            4'd13:
            begin
            end
            4'd14:
            begin
            end
            4'd15:
            begin
            end
            endcase
        end
    end
    

	endmodule
