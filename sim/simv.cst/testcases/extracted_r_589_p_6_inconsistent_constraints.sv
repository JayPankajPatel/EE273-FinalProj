class c_589_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_589_6;
    c_589_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0xz111zx0z11x10x01zxz01zx101xxzzxzxxxxxzxzzzzxzzxzxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
