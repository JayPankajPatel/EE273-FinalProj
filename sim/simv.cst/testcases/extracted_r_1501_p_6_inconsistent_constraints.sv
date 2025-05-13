class c_1501_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1501_6;
    c_1501_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x101zxxzzxxzz1x1z0zzzzzxzz1z1xzxzzxzzzzxzxxzxxxzxzxzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
