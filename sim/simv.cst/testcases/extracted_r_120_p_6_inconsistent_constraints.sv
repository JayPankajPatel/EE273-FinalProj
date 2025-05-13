class c_120_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_120_6;
    c_120_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zxz11110x110z010zx01xxxzx0z0zzzzzzxzxzxzxzxxxxxzzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
