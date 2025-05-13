class c_1504_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1504_6;
    c_1504_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xxx0x10z1zzzz0z01zz0x01100001zxzzzzxxxxzzzxzxzxxzxxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
