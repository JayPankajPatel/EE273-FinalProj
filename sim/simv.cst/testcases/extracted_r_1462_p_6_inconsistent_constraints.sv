class c_1462_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1462_6;
    c_1462_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xzz1x00z100z0z01z1xxx0xx0z1z1zzxxxxzzxzxzxxzzxxxzxxxzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
