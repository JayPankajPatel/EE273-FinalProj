class c_1826_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1826_6;
    c_1826_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz010z1z1zzz1x011zxzxzxxzx0z0zxzzzxxzxzxzxxxzzzzzxzxzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
