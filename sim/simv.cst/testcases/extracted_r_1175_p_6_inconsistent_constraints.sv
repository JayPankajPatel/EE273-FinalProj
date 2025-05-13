class c_1175_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1175_6;
    c_1175_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0000zxzzx1zx01z11xxx1zx10z00zxxxxzxxzxzxxxzxzzxzzzxxzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
