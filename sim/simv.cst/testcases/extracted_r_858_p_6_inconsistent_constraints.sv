class c_858_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_858_6;
    c_858_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zz101xxx10zxxz01z11z1xx110zzzxzxzzzzzxzzxzzxzxzzzxzxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
