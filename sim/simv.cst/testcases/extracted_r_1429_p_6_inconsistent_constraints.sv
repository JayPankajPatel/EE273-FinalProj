class c_1429_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1429_6;
    c_1429_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0xxzz10z0xz0110xzx1011z00z1zzxxxzzzzzzzxzxzxzxxxzzxxxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
