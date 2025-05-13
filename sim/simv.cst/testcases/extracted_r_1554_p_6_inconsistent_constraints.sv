class c_1554_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1554_6;
    c_1554_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1xz00x1001zx1xx01z1x0xzzx00xxxxzzxxzxzzxzxzxzxzzxzzzxxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
