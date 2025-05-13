class c_89_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_89_6;
    c_89_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz00xzz1xz0z01z100z0xx0z01011zzxzxzzxxxzzzxzzzxxzxzzxzxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
