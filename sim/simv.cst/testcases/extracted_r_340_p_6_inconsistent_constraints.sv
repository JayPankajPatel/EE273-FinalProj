class c_340_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_340_6;
    c_340_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x1xzx0110x0zz0110xz10z0x1xxzzzxzzzxxzxxzzxzzzzzzxxzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
