class c_312_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_312_6;
    c_312_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zx1x1x0zx0x0x0x0xzx0x0z0zzxxzzxxzxzzzxxxzxxxxzzxxzzzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
