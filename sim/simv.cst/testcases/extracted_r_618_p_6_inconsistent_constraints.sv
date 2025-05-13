class c_618_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_618_6;
    c_618_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x100zz01zx100zzx0xzzx00000xzxzzxxxzxxzzzzzxzxzxxxxzzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
