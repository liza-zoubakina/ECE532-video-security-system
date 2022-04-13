`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/30/2022 11:20:04 AM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb(

);
        reg tuser;
        reg clk;
        reg rstn;
        reg tvld;
        reg [23:0]tdata;
        reg tlast;
        reg tready;
        wire [31:0]o_counter;
        wire [15:0]l_counter;
        wire [15:0]f_counter;
        wire [31:0]frame_wait;
        wire led;
        
        always
        begin
        #4; 
        clk<=1;
        #4;
        clk<=0;
        end
        
        motion_detection_v1_0 modec_inst0
            (
                // Users to add ports here
                .s00_axis_tuser(tuser),
                //.m00_axis_tuser(),
                .counter_w(o_counter),
                .line_counter_w(l_counter),
                .frame_counter_w(f_counter),
                .frame_wait_w(frame_wait),
                .l_e_d(led),
                // User ports ends
                // Do not modify the ports beyond this line
        
                // Ports of Axi Slave Bus Interface S00_AXIS
                .s00_axis_aclk(clk),
                .s00_axis_aresetn(rstn),
                .s00_axis_tready(tready),
                .s00_axis_tdata({8'd0, tdata}),
                .s00_axis_tstrb(),
                .s00_axis_tlast(tlast),
                .s00_axis_tvalid(tvld)
        
                // Ports of Axi Master Bus Interface M00_AXIS
    //            .m00_axis_aclk(),
    //            .m00_axis_aresetn(),
    //            .m00_axis_tvalid()
    //            .m00_axis_tdata(),
    //            .m00_axis_tstrb(),
    //            .m00_axis_tlast(),
    //            .m00_axis_tready()
            );
            
        integer ii;
    //    wire led;
        
//        initial
//        begin
//            rstn=0;
//            #16;
//            rstn=1;
//            #16;
            
//            ii=0;
//            tuser=1;
//            tvld=1;
//            tready=1;
//            tlast=0;
//            tdata=24'd0;
            
//            while (ii < 307200)  
//            begin
//              //$display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
//              //tdata = {8'd200, 8'd150, 8'd100 };
//              tdata = tdata+1;
//              if((ii+1)%640 == 0)
//              begin
//              tlast=1;
//              end
//              else
//              begin
//              tlast=0;
//              end
//              #8;
//              tuser=0;
//              if(tready==1)
//              begin
//              ii = ii + 1;
//              end
//              else
//              begin
//              ii=ii;
//              end
//            end
//            tlast=0;
//            tvld=0;
//            #240;
            
//            ii=0;
//            tuser=1;
//            tvld=1;
//            tdata=24'd0;
//            while (ii < 307200)  
//            begin
//              //$display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
//              tdata = {8'd150, 8'd200, 8'd200 };
//              //tdata=tdata+1;
//              if((ii+1)%640 == 0)
//                begin
//                tlast=1;
//                end
//                else
//                begin
//                tlast=0;
//                end
//              #8;
//              tuser=0;
//              if(tready==1)
//              begin
//              ii = ii + 1;
//              end
//              else
//              begin
//              ii=ii;
//              end
//            end
            
//            tlast=0;
//            tvld=0;
//            #240;
            
//            ii=0;
//            tuser=1;
//            tvld=1;
//            tdata=24'd0;
//            while (ii < 307200)  
//            begin
//              //$display("Time %2d: r_Data at Index %1d is %2d", $time, ii, r_Data[ii]);
//              //tdata = {8'd150, 8'd200, 8'd200 };
//              tdata=tdata+1;
//              if((ii+1)%640 == 0)
//                begin
//                tlast=1;
//                end
//                else
//                begin
//                tlast=0;
//                end
//              #8;
//              tuser=0;
//              if(tready==1)
//              begin
//              ii = ii + 1;
//              end
//              else
//              begin
//              ii=ii;
//              end
//            end
//            tlast=0;
//            tvld=0;
//            #240;        
//            $stop;
            
//        end
endmodule
