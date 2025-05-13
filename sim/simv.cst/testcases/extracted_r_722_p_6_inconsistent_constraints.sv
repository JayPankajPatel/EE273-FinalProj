class c_722_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_722_6;
    c_722_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1z1xxx01z0zx00zz0z10x1111z1zxzxzxzxzxzxzxxzxzxzxxzzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
