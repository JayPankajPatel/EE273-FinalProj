class c_367_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_367_6;
    c_367_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zxz0xzxxz1z001xzz000xx1x1xz0xxzxxxzzxzxxxxxzzzxxzzxxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
