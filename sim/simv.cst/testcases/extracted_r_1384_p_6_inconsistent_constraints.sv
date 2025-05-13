class c_1384_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1384_6;
    c_1384_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0xzxxx0z00zz100x0xz1x00xz11xxzzzxxzxxzzxzzxxzxxzxxxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
