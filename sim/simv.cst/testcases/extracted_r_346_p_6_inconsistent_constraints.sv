class c_346_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_346_6;
    c_346_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxxx01z0xx10z10xzz001zxz1xx1zzzzzzzzzxxxxzxzzzxzzxxxzxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
