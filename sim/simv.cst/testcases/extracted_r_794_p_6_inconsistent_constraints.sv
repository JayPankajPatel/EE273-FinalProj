class c_794_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_794_6;
    c_794_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00zxx0zz0000z010x10xz0z00zz0000xxzxzxzxzxzzzzxzxxzzzxzxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
