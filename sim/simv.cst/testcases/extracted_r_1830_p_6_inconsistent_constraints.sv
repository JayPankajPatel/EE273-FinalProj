class c_1830_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1830_6;
    c_1830_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zz0zz011zxx10zz10xxxx1xx1x111zxxxzzxzxzxzzzzzxxzxxzzzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
