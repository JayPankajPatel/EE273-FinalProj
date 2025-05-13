class c_1574_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1574_6;
    c_1574_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xzz0z1xx101xx0xzx1x11010x1110xzzzxxzzxzxxzzzxzxzxzxxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
