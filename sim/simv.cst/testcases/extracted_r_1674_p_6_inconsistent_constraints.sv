class c_1674_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1674_6;
    c_1674_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zzzz1xx01110x0xxz1x0z0z0zzx1zzzxxzxzxxxxxxzzxxzxzzzzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
