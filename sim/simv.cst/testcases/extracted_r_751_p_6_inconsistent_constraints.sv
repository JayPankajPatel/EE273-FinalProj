class c_751_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_751_6;
    c_751_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz000zxz11xxxx10x01zxxx01100zzxxzxzxzzzzxxzxxzxzzzzzzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
