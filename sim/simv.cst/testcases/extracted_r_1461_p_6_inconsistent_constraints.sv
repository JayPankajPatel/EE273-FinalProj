class c_1461_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1461_6;
    c_1461_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x10x000xx0zxxz01x1100x1x0xxzzxzxzxxxxxzzxzzzzxxxzzxzzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
