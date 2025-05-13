class c_1123_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1123_6;
    c_1123_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101x011x100x011x0zxz10x1xzx1110zxzzzxxzxxzzzzxzxxzzzxxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
