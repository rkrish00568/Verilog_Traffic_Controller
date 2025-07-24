`timescale 1ns / 1ps

module traffic_light_tb;

    reg clk;
    reg rst;

    wire [2:0] light_M1;
    wire [2:0] light_S;
    wire [2:0] light_MT;
    wire [2:0] light_M2;

    Traffic_Light_Controller uut (
        .clk(clk),
        .rst(rst),
        .light_M1(light_M1),
        .light_S(light_S),
        .light_MT(light_MT),
        .light_M2(light_M2)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        $dumpfile("traffic_light.vcd");
        $dumpvars(0, traffic_light_tb);

        $display("Time\tState\tM1\tM2\tMT\tS");
        $monitor("%0t\t%b\t%b\t%b\t%b\t%b", $time, uut.ps, light_M1, light_M2, light_MT, light_S);

        #15;
        rst = 0;

        #300;

        $finish;
    end

endmodule
