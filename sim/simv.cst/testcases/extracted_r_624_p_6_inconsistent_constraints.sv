class c_624_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_624_6;
    c_624_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xzzz1xx110xx1z11100xxxzzzzx0xxxxxxxzxxzzzzzzxzzxxxxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
