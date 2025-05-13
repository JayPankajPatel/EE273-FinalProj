class c_288_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_288_6;
    c_288_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100xx1xz000xxz1100xzxx1xxxx0z1zxzzzxzxxzxzzxzzxxxzzxxzxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
