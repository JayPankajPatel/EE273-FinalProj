class c_1186_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1186_6;
    c_1186_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0x110x1z0x0x1x0xxzz0zx1z1z1xxxxxxzxxxxxzxzzzxzzzzxxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
