class c_1303_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1303_6;
    c_1303_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101zxzzz10z1xz101zx100zz00x0x1xzzzzzzzxxzzzzzxzxxzxzxxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
