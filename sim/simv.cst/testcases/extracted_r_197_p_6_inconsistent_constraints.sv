class c_197_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_197_6;
    c_197_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0x1zxzxxz01x0z1x1111xz01x11zzxxzxxzxxzzxzzxzzxzzzxxxzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
