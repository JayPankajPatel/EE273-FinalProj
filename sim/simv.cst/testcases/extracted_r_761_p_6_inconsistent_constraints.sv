class c_761_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_761_6;
    c_761_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111xx0xxzzz0x1xx10xx01x10x000111xxxzzzxxxxxzzzxzxzxzzzzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
