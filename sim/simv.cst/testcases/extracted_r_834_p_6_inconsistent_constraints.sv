class c_834_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_834_6;
    c_834_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z101010000x00x0xzzz11x0z0xzzx1xxxzxxzxzzzxzzzzzzxzxzzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
