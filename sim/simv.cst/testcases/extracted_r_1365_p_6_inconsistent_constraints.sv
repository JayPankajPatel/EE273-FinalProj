class c_1365_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1365_6;
    c_1365_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x10z00z1010xzzz0xx1x10111z0x111xxxxzxzzxxzzzzxxzxzzxxzxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
