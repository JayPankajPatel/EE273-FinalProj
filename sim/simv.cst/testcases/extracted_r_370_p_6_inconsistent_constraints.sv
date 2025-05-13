class c_370_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_370_6;
    c_370_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x1x0x101zxxx0zxx00xxx00111xxzzzzzxxzxzzzzxzzxxzzzzzzxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
