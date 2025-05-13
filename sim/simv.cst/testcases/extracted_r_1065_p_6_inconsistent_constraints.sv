class c_1065_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1065_6;
    c_1065_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxz0010x1010x1z1xz00zxzzx0xx10xxxxxxxxxzzxxzzxxxzzxxxzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
