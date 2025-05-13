class c_1732_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1732_6;
    c_1732_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10xzz1xxxxx10zzx1zz0z0zx0xzx0xzzxzzzzxzzxzzzxxxzxxxxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
