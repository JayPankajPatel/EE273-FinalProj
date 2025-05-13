class c_1027_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1027_6;
    c_1027_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1xx0xxz1zzxz0zx11zxxx0x1z1zz0xxzzzxxzxzxzxzxzxzxxzzzzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
