class c_928_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_928_6;
    c_928_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zxxzz0x0xx0111zx0z1010z0z0100xxxzzxxzxzzxzxzzzzzxxzxzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
