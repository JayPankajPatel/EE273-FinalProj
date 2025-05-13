class c_1681_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1681_6;
    c_1681_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzzxz1zzx11xz1z0z10xx0x01z1zx1zzxzzxxzzzxxxzxxzzxxxxzxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
