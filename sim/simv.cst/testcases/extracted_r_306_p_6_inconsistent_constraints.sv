class c_306_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_306_6;
    c_306_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz0xx1xxx0110xx0xzx00001111x11xxxxxzxzxzzxxzxzzxzxzzxxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
