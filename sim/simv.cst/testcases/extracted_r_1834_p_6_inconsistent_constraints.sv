class c_1834_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1834_6;
    c_1834_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z00x01z11z001z0x00z0011zzz100xxxzxxzzxzxxxxxxxxzzxzzzxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
