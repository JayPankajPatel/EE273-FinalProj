class c_1404_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1404_6;
    c_1404_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z11zz1x101x1x0z1z0xzzx10z10x1xzxzzxxzxxzxzxzzzxxzzxzzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
