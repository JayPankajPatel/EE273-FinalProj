class c_1248_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1248_6;
    c_1248_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1z01z1xxxz11xzxx111x0000xx00zzzzzzzzzxxxxzxzxxzzzzzxzxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
