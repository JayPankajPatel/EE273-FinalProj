class c_16_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_16_6;
    c_16_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x0zxx1xz1z00xz0xxzxxzzz1z111zxxxxxxxzxzxxzxzxzxzxzxxxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
