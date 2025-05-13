class c_978_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_978_6;
    c_978_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zxxx1zz0z101xxx011zzz01z10000zzxxxzxxzzzzxzxzxxxxzzzxxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
