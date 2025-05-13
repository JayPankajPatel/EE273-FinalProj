class c_671_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_671_6;
    c_671_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0x1zzz0x0zzxz1110100zzx1x01xzxxxxxxxzzxxzzzzxzzxzzzzzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
