class c_1679_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1679_6;
    c_1679_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzz11z10000z10z10xx0zxzz01z11zxxxxzxxxxxzxxzzzzzzxzzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
