class c_1447_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1447_6;
    c_1447_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0z0111xz1zx11z0z0x10x0xx1zx0zzzxxxxxxxzxxxzxxxzzzzzzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
