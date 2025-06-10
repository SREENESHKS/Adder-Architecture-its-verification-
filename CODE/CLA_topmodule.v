module topmodule1 (a_in, b_in, cin_in, clk, clear, sum_out, cout_out);
    input [3:0] a_in, b_in;
    input cin_in, clk, clear;
    output [3:0] sum_out;
    output cout_out;

   
    wire [3:0] a, b, sum;
    wire cin, cout;

   
    wire [3:0] a_bar, b_bar, sum_bar;
    wire cin_bar, cout_bar;

   
    fourbitdffp dff_a(a_in, clk, clear, a, a_bar); //4bit dffp d=ain q=a qbar=abar
    fourbitdffp dff_b(b_in, clk, clear, b, b_bar);
    dffp dff_cin(cin_in, clk, clear, cin, cin_bar);
   
    carrylook FA1(a, b, cin, sum, cout);

    fourbitdffp dff_sum(sum, clk, clear, sum_out, sum_bar);
    dffp dff_cout(cout, clk, clear, cout_out, cout_bar);

endmodule
