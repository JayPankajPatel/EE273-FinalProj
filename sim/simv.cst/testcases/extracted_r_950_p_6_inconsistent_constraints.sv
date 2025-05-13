class c_950_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_950_6;
    c_950_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10z1xx10xx10z100xzx1x0z0zz11x1xxzxzxzzzzxxzxxzxxxzzxxzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
