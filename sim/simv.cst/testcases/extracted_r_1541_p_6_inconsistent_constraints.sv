class c_1541_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1541_6;
    c_1541_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1xx10z101zx0xx0zxz1zzzx11z11x0zxzxxxzzxzzxzzxzxxzxzzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
