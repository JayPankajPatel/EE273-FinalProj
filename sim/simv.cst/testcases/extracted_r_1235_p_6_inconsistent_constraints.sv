class c_1235_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1235_6;
    c_1235_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x011z01z011xx000zx1x10zzx1x1zxzxxzxxzxxzxxzzzzzxxzzxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
