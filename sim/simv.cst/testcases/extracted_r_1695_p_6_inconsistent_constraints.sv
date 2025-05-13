class c_1695_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1695_6;
    c_1695_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xx0xz1x1z01z1x0000zxz1101x0z0zzxzzzzxxxxzzxxzxzzzxzzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
