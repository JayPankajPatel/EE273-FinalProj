class c_1315_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1315_6;
    c_1315_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1110xx0xz1xz11011zzzx00zx01zxxxxxxxxxxxxxxxzxzxzzzzzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
