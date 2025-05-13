class c_1067_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1067_6;
    c_1067_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0xzxzzzxzx1z1xzz1z00x1z0z11zxxxzzzzzxxxxxzzzxzzxxxzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
