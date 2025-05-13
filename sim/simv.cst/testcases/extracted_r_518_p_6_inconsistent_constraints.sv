class c_518_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_518_6;
    c_518_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00zx11x1z1000z100z0z1xxzz01zzzzxzxxzxxxxzzxzzzzxxxzzzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
