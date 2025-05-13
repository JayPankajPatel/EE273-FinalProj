class c_297_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_297_6;
    c_297_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01z0xx100xzz1zxzzzz01x0z1zxz0zzxxzxzxzzzxxxxzzzxzxzxzzxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
