class c_377_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_377_6;
    c_377_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxzz1x100x1xxz11x11x0xxz1z1x00zxxzxzzzxxzxzxxxxzxxzzzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
