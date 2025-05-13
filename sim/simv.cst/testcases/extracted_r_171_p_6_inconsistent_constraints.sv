class c_171_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_171_6;
    c_171_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0011z1xzz00111xz11x00z00zxx0111xxxxxxxzxzxzxzxzzxxxxxzxzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
