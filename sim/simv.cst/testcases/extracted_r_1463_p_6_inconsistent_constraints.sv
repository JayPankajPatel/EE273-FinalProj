class c_1463_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1463_6;
    c_1463_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x00xzzxz1x00x1zx110zxx000zxxx1xzxxzxxzxxxxzzxxxxxxzxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
