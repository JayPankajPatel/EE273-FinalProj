class c_496_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_496_6;
    c_496_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zx10xx11x00001xxz001xx0xxxzxx1zxzzzxzzxzxzzxxzzzzxzzxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
