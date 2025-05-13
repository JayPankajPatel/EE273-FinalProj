class c_397_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_397_6;
    c_397_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01x10xzz1z1zxx1x0x00zz0zzx0zxxzxxxxzxxxzzxzxzzxzzxzxzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
