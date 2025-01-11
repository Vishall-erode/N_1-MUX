module n_1_mux_rtl #(parameter n = 4) (
    input wire [(2**n)-1:0] data_in,  
    input wire [n-1:0] s_line,         
    output reg out                     
);

always @(*) begin
    out = data_in[s_line];             
end

endmodule
