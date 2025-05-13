class c_1454_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1454_6;
    c_1454_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxxz101001xz1xzx1z0z10x00x10zzzzzzxxxxxxzxzxzxxzzzxzzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
