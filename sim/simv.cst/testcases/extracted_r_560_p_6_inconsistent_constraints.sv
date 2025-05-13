class c_560_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_560_6;
    c_560_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0x000001zx0x10xxzz0zx1100xxx1xxxxxxzzxzzxxxzxxzzzzzzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
