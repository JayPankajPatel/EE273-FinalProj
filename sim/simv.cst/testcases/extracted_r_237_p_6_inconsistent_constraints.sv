class c_237_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_237_6;
    c_237_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x011z01xz0z1xz110zz0x1zx00001z1zxxxzzxxzzxzzxxzzxzxxxxxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
