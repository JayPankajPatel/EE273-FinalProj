class c_1094_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1094_6;
    c_1094_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10z011xz10x10zzzzz11z1x10xzz0xzzxxzxzzzxzxzxzzzzzxxxzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
