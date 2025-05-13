class c_1661_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1661_6;
    c_1661_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz1x1xz00z0z10zx1x1xzz0xz11x1zxzxxxzzxzzzxxzzxzxzxxxxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
