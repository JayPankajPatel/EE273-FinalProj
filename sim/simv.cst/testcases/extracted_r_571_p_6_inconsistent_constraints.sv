class c_571_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_571_6;
    c_571_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0z0z101x101x101x000011zzzz0xzzxzxzzxxzzzxxzxxzxzxxzzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
