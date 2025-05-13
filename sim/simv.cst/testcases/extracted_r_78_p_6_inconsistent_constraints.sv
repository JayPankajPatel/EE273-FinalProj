class c_78_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_78_6;
    c_78_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0xxxxx11z1xzz1x11x1zz11zx001xxzxzzzzxxzxzzxzzxxzxzxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
