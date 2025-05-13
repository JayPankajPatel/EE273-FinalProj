class c_1623_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1623_6;
    c_1623_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxx11zx11100z01z01111x00x0z00xxxzzzxzxxzzzzxzzzxzzzzzzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
