class c_515_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_515_6;
    c_515_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101zx10xz11x1z00x1zxz10xxz1xxxzxxxzxxzxzxzxxzzxxzzxxxzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
