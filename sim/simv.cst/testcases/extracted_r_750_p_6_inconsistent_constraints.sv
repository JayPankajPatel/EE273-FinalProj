class c_750_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_750_6;
    c_750_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111xz1010001z000zx00x1x0z001x1zzzxzxzxzxxxxzzzzxzzzxxxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
