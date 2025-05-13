class c_190_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_190_6;
    c_190_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00xx0x0xz1zzx010xzz10x00xz0xzzzzxzzzxxxzxxxxzxxxxxxzzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
