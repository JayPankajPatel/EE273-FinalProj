class c_934_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_934_6;
    c_934_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1x10z1zz1x1z1zz100z10000zx0zzxxzxzzxxxxzxzzzzxxxxzxxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
