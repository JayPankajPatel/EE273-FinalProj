class c_878_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_878_6;
    c_878_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxxzzz01z10z0x1xz01zxxzx1z0zz1zxxzzxzzzzzxxzzzxxzxzzzzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
