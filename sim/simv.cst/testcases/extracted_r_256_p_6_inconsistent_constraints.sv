class c_256_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_256_6;
    c_256_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110zz100x11zx1zxzz01xzxxzxz0z1zxzzxzxzzzzxxxxzxxxzxxxxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
