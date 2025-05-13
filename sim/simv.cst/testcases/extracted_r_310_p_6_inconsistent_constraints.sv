class c_310_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_310_6;
    c_310_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0zxxx01xz1xxzx01z1zzz1xz1xz01zxzzzxxxzzxxxzxxxzzxzxzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
