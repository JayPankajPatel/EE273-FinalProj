class c_68_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_68_6;
    c_68_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10zz010xx1x0zxzzx000zzzxxx0zzxxzxxxzxzzxxxzzxzxzzzxzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
