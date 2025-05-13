class c_1038_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1038_6;
    c_1038_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxzxz1zzzx10xz0zxxx110011xz10xxzzzzxxzzxxxzzxxxxxxzxzzxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
