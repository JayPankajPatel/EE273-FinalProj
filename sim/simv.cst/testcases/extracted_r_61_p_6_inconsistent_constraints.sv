class c_61_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_61_6;
    c_61_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0x1x00z0010xx111zz0xzx011zx10xxzzzxxxzzxzxxxzzxxxxxzxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
