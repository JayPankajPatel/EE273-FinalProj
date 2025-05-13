class c_424_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_424_6;
    c_424_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz1z00z1110x0x10zx1x00x1z0x11xzzzzzxxzxxzxxxxxzzxzxzzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
