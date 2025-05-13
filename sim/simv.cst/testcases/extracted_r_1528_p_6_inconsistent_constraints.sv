class c_1528_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1528_6;
    c_1528_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx000x011x01zz1000zxzxxzxzxxx0xxxzzxzzxxxxxzzxxxxzxzzzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
