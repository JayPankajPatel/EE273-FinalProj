class c_765_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_765_6;
    c_765_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1xzxzzxzz1x10zzzx0000z0zzz11xzzzzzzxxxxxzxxxzzzxxxxxxzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
