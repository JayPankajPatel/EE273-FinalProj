class c_1525_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1525_6;
    c_1525_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1xx1011x1x11xzx00z1x10100101zxzzxxxzzxzxzxzzxxzxxzzzzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
