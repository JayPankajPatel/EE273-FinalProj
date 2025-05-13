class c_1203_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1203_6;
    c_1203_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0z11z01x1xxx0zzzx11x0xx0000xzxzzxzzzzxzzzxzxxxzxxxzzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
