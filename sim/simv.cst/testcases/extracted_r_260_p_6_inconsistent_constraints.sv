class c_260_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_260_6;
    c_260_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxz010x0xz01z1111z1z0x10z1110xzzxxxxzxxxzzxzzzxzzzzzxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
