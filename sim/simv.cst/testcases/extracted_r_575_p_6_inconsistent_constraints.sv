class c_575_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_575_6;
    c_575_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xx10xxxzxz0zxzx1001xz1zx1zz0xxxzxxxzzzzzzzzxzzzzxzxxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
