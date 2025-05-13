class c_561_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_561_6;
    c_561_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x00x0zzz0zxz1011xz011xxz01z1zzxxzzzzxzxxzzxxxxzzxxzxzxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
