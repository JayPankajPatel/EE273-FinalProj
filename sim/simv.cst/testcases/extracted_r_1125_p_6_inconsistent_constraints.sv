class c_1125_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1125_6;
    c_1125_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1111z0zx11x01zzx01z11z0x00z11xxzzxzxxzxxxzzzzzzxzxxxxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
