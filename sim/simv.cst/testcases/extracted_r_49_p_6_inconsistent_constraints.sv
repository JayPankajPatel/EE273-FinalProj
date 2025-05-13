class c_49_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_49_6;
    c_49_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x001z01zxz100x01xz0z110z000x1010zzxzzxzxzzxxzxzzzzzxxxzxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
