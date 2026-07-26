
module mini_soc1(
    input  wire clk, 
    input  wire rst, 
    input  wire alu_sel, 
    input  wire mux_sel, 
    output wire [1:0] soc_out 
); 
    wire [3:0] count; 
    wire [1:0] alu_out; 

    counter u_counter (.clk(clk), .rst(rst), .count(count)); 
    
    alu_2bit u_alu (.a(count[3:2]), .b(count[1:0]), .sel(alu_sel), .result(alu_out)); 
    
    mux_2X1 u_mux (.in0(count[3:2]), .in1(alu_out), .sel(mux_sel), .out(soc_out)); 
endmodule 
