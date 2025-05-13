class c_1653_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1653_6;
    c_1653_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzz0x0x10x11z0xxxzz0xz110zz1xzxzzzxxzzzxzxxzzxzxxxxzzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
