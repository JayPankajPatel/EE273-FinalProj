class c_332_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_332_6;
    c_332_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1zx001001x0xzxx00x000zx110x111xzxzzxxxzxzxzxxxzxxxzxzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
