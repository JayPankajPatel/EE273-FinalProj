class c_221_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_221_6;
    c_221_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0z01011z100000zx1zxzz10xz0x0zzxzxxzzzxxzxzxzzzzzzxzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
