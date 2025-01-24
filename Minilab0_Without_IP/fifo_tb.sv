module fifo_tb();
    reg clk, rst_n;
    logic rden, wren;
    logic [7:0] i_data;
    logic [7:0] o_data;
    logic full, empty;

    FIFO iDUT(.clk(clk), .rst_n(rst_n), .rden(rden), .wren(wren), .i_data(i_data), .o_data(o_data), .full(full), .empty(empty));

    initial begin
        $display("Start");
        clk = 0;
        rden = 0;
        wren = 0;
        i_data = '0;
        rst_n = 1;
        
        @(posedge clk);
        rst_n = 0;
        @(posedge clk);
        rst_n = 1;

        if (empty != 1) begin 
            $display("Error: Empty not asserted 1");
        end 

        rden = 1;
        @(posedge clk);
        if (o_data != '0) begin 
            $display("Error: o_data not empty");
        end 

        rden = 0;
        i_data = 8'b10101010;
        wren = 1;

        @(posedge clk);
        i_data = 8'b00001111;

        @(posedge clk);
        i_data = 8'b11110000;

        @(posedge clk);
        i_data = 8'b11001100;

        @(posedge clk);
        i_data = 8'b11111111;

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);

        if (full != 1'b1) begin 
            $display("Error: Full not asserted");
        end 
        if (empty == 1'b1) begin 
            $display("Error: Empty still asserted");
        end 

        wren = 0;
        rden = 1;

        @(posedge clk);
        @(posedge clk);
        if (o_data != 8'b10101010) begin
            $display("Error: o_data not correct 1");
        end

        @(posedge clk);
        if (o_data != 8'b00001111) begin
            $display("Error: o_data not correct 2");
        end

        @(posedge clk);
        if (o_data != 8'b11110000) begin
            $display("Error: o_data not correct 3");
        end

        @(posedge clk);
        if (o_data != 8'b11001100) begin
            $display("Error: o_data not correct 4");
        end

        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);

        if (empty != 1) begin 
            $display("Error: Empty not asserted 2");
        end 

        $display("Passed!!");
        $stop();
    end

    always begin
        #5 clk = ~clk;
    end

endmodule