class c_1551_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1551_6;
    c_1551_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx0xxzx0x011xz1xzz00010zzz11xzxzxzzzzzxxzxxzxxzzzzzxxxxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
