class c_1106_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1106_6;
    c_1106_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0x0x0zx1xx1z10zz011xzzz1xx0zxzzxxxzzxxxzzzzxxxxzxxxzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
