class c_235_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_235_6;
    c_235_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxx1zz0x0xx000xx0xx11000xz101zxzxxxzzzxzzxzzxzxzzxzzxxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
