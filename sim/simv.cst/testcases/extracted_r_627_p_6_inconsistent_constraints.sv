class c_627_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_627_6;
    c_627_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz010xzzxz0xxzz1x01z1x000z00zz0xxzzxxxxxxxzzzzzzzxxxzxzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
