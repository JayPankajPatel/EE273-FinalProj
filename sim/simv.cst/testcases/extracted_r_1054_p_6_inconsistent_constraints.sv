class c_1054_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1054_6;
    c_1054_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxz0xzz1xz1x1x100xzx11xxz100zxzzxzxxxzzxxxzzzxxxxzzzzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
