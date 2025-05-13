class c_1626_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1626_6;
    c_1626_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0xxx1z0x0zzxzzz0x11x10zxzz1xzxzzxxxxzzzxxxzxxzxzzzzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
