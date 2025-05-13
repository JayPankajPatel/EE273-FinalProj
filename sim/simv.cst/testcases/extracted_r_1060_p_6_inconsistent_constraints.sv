class c_1060_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1060_6;
    c_1060_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x110xx1x00x11x101z1110x01x110z0xxzxxzxxzzzxzzzxzxxxxxzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
