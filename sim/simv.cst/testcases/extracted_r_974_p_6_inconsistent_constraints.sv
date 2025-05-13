class c_974_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_974_6;
    c_974_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxzx0x1z1xx0010xxz1010x00xx0zzzxzxzzxxzxzxxxzzzzxxxzzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
