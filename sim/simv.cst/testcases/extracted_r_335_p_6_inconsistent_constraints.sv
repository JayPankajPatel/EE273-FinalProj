class c_335_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_335_6;
    c_335_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0zx1xx1x1zzz0z01z0zxzz10z101xxxxzxxxzzxxxxzxzzxxzxzzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
