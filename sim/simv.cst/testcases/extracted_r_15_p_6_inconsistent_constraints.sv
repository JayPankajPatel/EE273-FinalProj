class c_15_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_15_6;
    c_15_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzz0zzxzxz1zxz01zx11xx1z10x1xxzxxxxxzxzzzzxxxzzxzxxxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
