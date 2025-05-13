class c_886_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_886_6;
    c_886_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zxx1101xz00xz0zz0x0x1zx100100zzzzxxzzzzzxzxxxzxzzxzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
