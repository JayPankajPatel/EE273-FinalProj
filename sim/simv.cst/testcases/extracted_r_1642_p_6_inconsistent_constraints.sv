class c_1642_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1642_6;
    c_1642_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1x110xz1x0xzxz0xz00100x0xzxx1xzxzxxxxzxzzxzxzzzxxzxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
