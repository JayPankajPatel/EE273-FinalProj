class c_835_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_835_6;
    c_835_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x1z100xz0xz0xz01z1z00zz011010xxzzxzzzxzzzxzzzxxzzzxxxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
