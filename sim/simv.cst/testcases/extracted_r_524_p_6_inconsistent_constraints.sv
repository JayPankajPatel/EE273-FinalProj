class c_524_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_524_6;
    c_524_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz010z111zx0zxz0000z000110z1xxxxxxxzxzxxzxxzzzzzxzzzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
