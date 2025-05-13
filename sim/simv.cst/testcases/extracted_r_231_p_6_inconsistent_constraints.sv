class c_231_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_231_6;
    c_231_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0x10xz1x101z00111x0xzx11x0zz0xxzxxxzzzxxxzzxzxzxzzzzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
