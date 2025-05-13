class c_1487_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1487_6;
    c_1487_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zxxz10x1xz0z00zx0x1xzz1xxz000zxzxzxzzxxzzzxzzzzxxxzzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
