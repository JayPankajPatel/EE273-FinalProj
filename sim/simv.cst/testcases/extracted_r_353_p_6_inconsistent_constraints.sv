class c_353_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_353_6;
    c_353_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxz1z11xx1zx0zzz0x010z0xxxx10zxzxxzxzxzzzzzxxzxzxxzxxxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
