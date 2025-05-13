class c_927_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_927_6;
    c_927_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxxzx0xzzxzx1zz1x0x001z0xzzzzxzzxzzzxzxzxxzzzzzzxzxzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
