class c_680_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_680_6;
    c_680_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1zzz1x00x1z0xz0xxz0xzzx1xxzx0zxxzxxxzxzxzxzxxxzxzxxxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
