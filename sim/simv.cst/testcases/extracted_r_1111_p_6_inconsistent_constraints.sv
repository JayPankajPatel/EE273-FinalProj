class c_1111_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1111_6;
    c_1111_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xzz01zx1x1zzxz1z01x0x0xz1xzzzxzzxzzxxzxxzxzzxzxzzxxxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
