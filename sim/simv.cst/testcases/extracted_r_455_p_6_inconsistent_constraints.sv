class c_455_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_455_6;
    c_455_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xzz0z1zx1000xxzx10xzxz0zx00xxzzzzxxzxxxzzzzxxxzxxxxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
