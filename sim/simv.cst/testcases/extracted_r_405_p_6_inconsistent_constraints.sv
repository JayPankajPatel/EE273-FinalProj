class c_405_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_405_6;
    c_405_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x11zz1xxz111z10zzxzz11zz0zxzx0xxzzzxzxzzzzxzxzzxxzxzxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
