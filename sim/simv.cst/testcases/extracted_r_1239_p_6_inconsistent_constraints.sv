class c_1239_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1239_6;
    c_1239_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z111xxx1x1z0z10x1zzx10zx0xxzx0xzxzxzxzxzxzzzxzzzzxzxxxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
