class c_1413_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1413_6;
    c_1413_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz000z11xzxx101zzz1z10z0x10xx0xxzxzxzxxzzzxxzzzxxzzzxzxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
