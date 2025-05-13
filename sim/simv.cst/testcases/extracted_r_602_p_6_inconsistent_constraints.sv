class c_602_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_602_6;
    c_602_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101xz0x101x0zx1z0zx0zx11x0zzxzxxzxzzxzzzxzxxxzzzxxxzxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
