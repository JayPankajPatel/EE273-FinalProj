class c_1471_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1471_6;
    c_1471_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10zz00xzz1xz00z10010x01z010xzzxzzxzzxxzzxxxxxxzxzxxxxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
