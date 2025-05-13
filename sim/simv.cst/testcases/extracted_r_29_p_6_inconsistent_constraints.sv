class c_29_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_29_6;
    c_29_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100010x000z1xx0000zzxzxzz0z0100zxzxxzzzxzzxzxzzzzxxxzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
