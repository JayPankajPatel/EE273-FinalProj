class c_893_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_893_6;
    c_893_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0z1xzx01x010010xxxzx1x1010zx0zzzzxxzxxzxzzzzzxxzzxxxzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
