class c_894_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_894_6;
    c_894_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1x0z00x1011z0xx01z100xx0011zzxxxxzzxzxzzxxxzxxzxxzxxzzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
