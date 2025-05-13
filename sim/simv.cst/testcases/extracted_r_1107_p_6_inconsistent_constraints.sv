class c_1107_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1107_6;
    c_1107_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz0x010z10xzxxzx0zxx1xx10x0x0xzxzzzxzxzzxxzxxzzxxxxxxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
