class c_468_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_468_6;
    c_468_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zxx1zz10zx0xxz11xz0xx0z100z1zxzzzzzxxzzzzzzzzxxxxzzzzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
