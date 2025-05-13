class c_345_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_345_6;
    c_345_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx0xxxxx0zzzz0x100xx0zz11zxz10xzzzxzzxzxzxzxzzxzxxzzzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
