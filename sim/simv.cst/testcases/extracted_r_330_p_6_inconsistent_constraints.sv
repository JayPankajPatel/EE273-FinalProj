class c_330_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_330_6;
    c_330_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxxxx0zzxxxz1z10100zz1zxxzz0zxzzxxzxzxxxxzxzxxzzxxzxxzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
