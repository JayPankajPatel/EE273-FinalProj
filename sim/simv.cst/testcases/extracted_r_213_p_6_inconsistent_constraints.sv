class c_213_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_213_6;
    c_213_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11xxzzz0zxx10xz1x0x10x1111z101xxzxzzxzxzxzxxzxxxxzxxxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
