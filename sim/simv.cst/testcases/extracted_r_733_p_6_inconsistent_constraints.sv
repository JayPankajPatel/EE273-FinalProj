class c_733_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_733_6;
    c_733_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1000zz11xxz0x01zxxxx0z1010zx1zzzxzxzzxzzzzzzxzxzxxzxxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
