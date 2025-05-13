class c_189_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_189_6;
    c_189_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zx11z010z00011z0z1xzx1x01xxxxzxzzxxxxxzzxzxxxzxxxxzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
