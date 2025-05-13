class c_1460_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1460_6;
    c_1460_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz1z1zxz1zxxx1z1z001z10x001xz1zxxxxzxxzxzzzzxzzxxzxxzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
