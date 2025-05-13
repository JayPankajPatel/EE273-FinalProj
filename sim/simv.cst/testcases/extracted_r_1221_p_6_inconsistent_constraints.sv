class c_1221_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1221_6;
    c_1221_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xx0x1x1zz1001x1xxx110zxz11zxzxxxxzxzzxxzxzxzxxzzzzzxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
