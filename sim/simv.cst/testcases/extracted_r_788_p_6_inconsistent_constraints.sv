class c_788_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_788_6;
    c_788_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10zz000z0zxx01100zz1xx01zx11zxzzzzxzxxxzxzxxzzxzxxzxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
