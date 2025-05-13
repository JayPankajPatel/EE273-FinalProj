class c_773_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_773_6;
    c_773_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z1zzx1x0x01x11x11xxz1zxx1xx0xzzxxxxxxzzzxzzzxzxxzxzxzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
