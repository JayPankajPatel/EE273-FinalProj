class c_62_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_62_6;
    c_62_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx101xzx1z00010x00x1010zz11x00zxzzxzzxxxxxzzzxzzzzzxxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
