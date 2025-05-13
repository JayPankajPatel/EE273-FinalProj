class c_949_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_949_6;
    c_949_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1xx01x0xx10zxx1z1zx0zxz0zxxz0zzxxzxxzxxxzxzxzzzxzzxzxxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
