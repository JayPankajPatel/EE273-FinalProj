class c_1376_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1376_6;
    c_1376_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx0z0x1z0z0z11000zxxz1x1zxz10xzxzzzxxzzzzzxzxxxxxxxzxzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
