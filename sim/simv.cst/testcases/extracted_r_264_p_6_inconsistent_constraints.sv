class c_264_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_264_6;
    c_264_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1xz0xx0z110xzzxz1z0xz11010z0xxzxxzzzzxxxzzzzzxxxzzxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
