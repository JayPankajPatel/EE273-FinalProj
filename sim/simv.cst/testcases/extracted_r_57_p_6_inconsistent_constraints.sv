class c_57_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_57_6;
    c_57_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx10zz0xz1111x0x11xzx00010x1zzxzzxzxzzzzxzzxzzxzxxxzzzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
