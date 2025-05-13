class c_7_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_7_6;
    c_7_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z0zz01z0x0z0000z000z0111z0100xzxxzxzzzzxzxzxzxxxzzzzzxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
