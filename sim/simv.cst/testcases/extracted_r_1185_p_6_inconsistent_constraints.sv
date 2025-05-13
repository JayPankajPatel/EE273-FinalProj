class c_1185_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1185_6;
    c_1185_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11z100000xzz1x011zxzz0z0z0x010xzxzxzxxzzxzzxzzxzzzxxxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
