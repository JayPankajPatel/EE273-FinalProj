class c_1622_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1622_6;
    c_1622_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10100x1xz110xz0zx1x10xz10x10z1x0xzxxxzxxxxzxzzzxzzzxxxxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
