class c_311_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_311_6;
    c_311_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx0z0z10x0x1x000x1011z0zzxzx01xzxzxxzzxxxxxxzxxzxxzxxxzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
