class c_181_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_181_6;
    c_181_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzxzz0000101011zxz0x11xz1xz10zzzzzzxzzxxzzxxzzxxzzzzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
