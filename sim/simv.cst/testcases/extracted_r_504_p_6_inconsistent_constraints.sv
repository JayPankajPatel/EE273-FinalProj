class c_504_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_504_6;
    c_504_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx10zzzzz10x1xxzz00zxzz001z11xzxzzxxxzxxzzzxxzzxxxxxzzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
