class c_967_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_967_6;
    c_967_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11000zxx0zx0xz0x0zzz00zxzxxz0z0zzzxxzzxxxzzzxzzxxzzzzxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
