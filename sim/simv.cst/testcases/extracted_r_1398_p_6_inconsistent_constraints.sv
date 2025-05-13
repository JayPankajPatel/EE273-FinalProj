class c_1398_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1398_6;
    c_1398_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx11z000zxzzzz1z1xzx111z11z11xzxxzxzzzxxxzzzzzzxxzzxxzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
