class c_943_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_943_6;
    c_943_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx110zzxzxxzz0zxx1z01zxx0x0xx1xxzxxxxxxzzzxxzzzxxzzxzzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
