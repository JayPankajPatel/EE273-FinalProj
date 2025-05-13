class c_106_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_106_6;
    c_106_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x10z0zzzzz0011z100x01001xzzzx1xzzzxxzzzxzzzzxzxxxzxzzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
