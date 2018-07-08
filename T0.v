module T0(
    input [0:4] KEY,
    input CLOCK_50,

    output reg [0:6] HEX0
);

reg [0:25] letter;
reg [0:1] click;

always @(posedge CLOCK_50) begin
    // Reset
    if(KEY[1] == 0)
    begin
        click <= 0;
        letter <= 0;
    end
    // Click no btn mas eh ultima letra
    else if(KEY[0] == 0 && click == 0 && letter == 25)
    begin
        letter <= 1;
        click = 1;
    end
    // Click no btn para proxima letra
    else if(KEY[0] == 0 && click == 0)
    begin
        letter <= letter + 1;
        click = 1;
    end
    // Botao soltado
    else if(KEY[0] == 1 && click == 1)
    begin
        click = 0;
    end

    if(letter == 0) begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 1;
        HEX0[4] <= 1;
        HEX0[5] <= 1;
        HEX0[6] <= 1;
    end
    //A
    else if(letter == 1)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //B
    else if(letter == 2)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //C
    else if(letter == 3)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 1;
    end

    //D
    else if(letter == 4)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 0;
    end

    //E
    else if(letter == 5)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //F
    else if(letter == 6)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //G
    else if(letter == 7)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //H
    else if(letter == 8)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //I
    else if(letter == 9)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 1;
        HEX0[5] <= 1;
        HEX0[6] <= 1;
    end

    //J
    else if(letter == 10)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 1;
    end


    //L
    else if(letter == 11)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 1;
    end

    //M
    else if(letter == 12)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 1;
    end



    //N
    else if(letter == 13)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 0;
    end

    //O
    else if(letter == 14)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 1;
    end

    //P
    else if(letter == 15)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 0;
        HEX0[2] <= 1;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //Q
    else if(letter == 16)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 1;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //R
    else if(letter == 17)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 1;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 0;
    end

    //S
    else if(letter == 18)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 1;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //T
    else if(letter == 19)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //U
    else if(letter == 20)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 1;
    end

    //V
    else if(letter == 21)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 1;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 1;
    end

    //W
    else if(letter == 22)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 1;
        HEX0[3] <= 0;
        HEX0[4] <= 1;
        HEX0[5] <= 0;
        HEX0[6] <= 1;
    end

    //X
    else if(letter == 23)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 1;
        HEX0[4] <= 0;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //Y
    else if(letter == 24)
    begin
        HEX0[0] <= 1;
        HEX0[1] <= 0;
        HEX0[2] <= 0;
        HEX0[3] <= 0;
        HEX0[4] <= 1;
        HEX0[5] <= 0;
        HEX0[6] <= 0;
    end

    //Z
    else if(letter == 25)
    begin
        HEX0[0] <= 0;
        HEX0[1] <= 0;
        HEX0[2] <= 1;
        HEX0[3] <= 0;
        HEX0[4] <= 0;
        HEX0[5] <= 1;
        HEX0[6] <= 0;
    end
end


endmodule


