class c_1333_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1333_6;
    c_1333_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0zz001zzx011zz01xzx0xx01z1z11xxxxzxxzxzzxzzxxzxzxxxzxxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
