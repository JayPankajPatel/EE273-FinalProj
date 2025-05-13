class c_1550_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1550_6;
    c_1550_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z11x01z10x1000zz101z1z1zzx001zzxzzzxxzzxzxzxxzxxxzxxxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
