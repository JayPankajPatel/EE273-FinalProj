class c_621_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_621_6;
    c_621_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1z111x010z01z0xx010zz0zx00z1zxxzxxzzzxzzxxzzzzzxzxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
