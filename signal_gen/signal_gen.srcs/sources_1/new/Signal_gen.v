module Signal_gen (
    input wire clk,     // 10ns clock
    input wire rst,     // Reset signal
    output wire signal  // Output signal
);
reg [7:0] count = 0;
reg toggle_clk = 0;
reg start_sof =0;
reg start_pri =0;
reg start_eof =0;
wire signal_clk;
always @(posedge clk) begin 
    if(rst) begin 
        count <= 0; 
        count_unit <= 0;
        start_sof <= 1;
        start_pri <= 0;
        start_eof <= 0;
        toggle_clk <= 0;
        count_pri <=0;
        
    end
    else begin 
        count <= count +1;
    end
    if (count == 8'h31) begin 
        toggle_clk <= ~ toggle_clk;
        count <= 0;
    end
end



assign signal_clk = toggle_clk;
reg [6:0] count_unit =0;
reg [5:0] count_pri =0;
reg toggle_signal=0;
always @(posedge signal_clk) begin 
    if (count_unit == 7'h63) begin 
        count_unit <= 0;
    end
    else begin 
        count_unit <= count_unit+1;
    end
    
    if(start_sof) begin 
        if (count_unit <7'h4)begin 
            toggle_signal <=1;
        end
        else if (count_unit <7'h35)begin 
            toggle_signal <=0;
        end
        else begin 
            start_sof <= 0;
            start_pri <= 1;
            count_unit <= 0;
        end
    end
    else if(start_pri) begin 
        if (count_pri < 6'h32) begin 
            if (count_unit <7'h1e)begin 
                toggle_signal <=1;               
            end
            else begin 
                toggle_signal <=0;
                if (count_unit == 7'h62)begin
                    count_pri <= count_pri+1;
                end
            end
        end
        else begin
            count_pri <= 0;
            start_pri <= 0;
            start_eof <= 1;
        end
        
    end
    else if(start_eof) begin 
        if (count_unit <7'h14)begin 
            toggle_signal <=0;
        end
        else if (count_unit <7'h20)begin 
            toggle_signal <=1;
        end
        else begin  
            toggle_signal <=0;
            start_sof <= 0;
            start_pri <= 0;
            start_eof <= 0;
        end             
    end
end
assign signal = toggle_signal;
endmodule
