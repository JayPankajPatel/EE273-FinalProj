class c_290_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_290_6;
    c_290_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zz1z10111z0z1010x1z1z1z1z1z0xzzxzzxzxxxxxxzxxxzzzzzxxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
