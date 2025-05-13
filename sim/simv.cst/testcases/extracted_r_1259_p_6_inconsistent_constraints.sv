class c_1259_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1259_6;
    c_1259_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx111z01xzz1xx1xxx00111z10zz11xzxxzzxxzxxzzzzzzxxzxzxzzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
