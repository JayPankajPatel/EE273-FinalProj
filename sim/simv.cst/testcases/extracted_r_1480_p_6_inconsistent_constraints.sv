class c_1480_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1480_6;
    c_1480_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz1xxx0xz0zzz01xxz011x11x01z0xzxxxxzxxxzzxzxxxzzxzzzzzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
