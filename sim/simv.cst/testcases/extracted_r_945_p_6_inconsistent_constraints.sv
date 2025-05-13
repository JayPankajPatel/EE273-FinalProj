class c_945_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_945_6;
    c_945_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz00x0z10zxzzxxzz0zx00xx10zz10z1xxxxzzzzzxzzxzzzzzzxzxzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
