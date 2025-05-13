class c_1408_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1408_6;
    c_1408_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz0001001zxx011x10xzx10010101xxzzzzzxxxxxxzzxzxxzxxzxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
