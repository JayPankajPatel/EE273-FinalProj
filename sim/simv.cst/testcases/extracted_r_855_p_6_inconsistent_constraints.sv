class c_855_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_855_6;
    c_855_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z10xx01z0zxzzzxz01zxz0z0zzzzz1xxzxzxzzxxxzxxxzxzzzzzzxzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
