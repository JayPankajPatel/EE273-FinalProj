class c_1704_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1704_6;
    c_1704_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxxzzz111xxzz0x110zzzx0z001x10xzxxzxzxzzzzxxzxxzxxzzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
