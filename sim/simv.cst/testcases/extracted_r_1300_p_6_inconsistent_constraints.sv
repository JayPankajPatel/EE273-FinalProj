class c_1300_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1300_6;
    c_1300_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z11x010zzxz1zz01zz01xxz000010xxzxzxxzxxzzzxzxxzxxxxxzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
