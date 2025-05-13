class c_50_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_50_6;
    c_50_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz1xzz0xz1x10z10101z0001xzzxz0zzxxzzzxxzxzzzxzzxxzxxxxzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
