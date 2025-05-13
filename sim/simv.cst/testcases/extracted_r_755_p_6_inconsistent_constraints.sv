class c_755_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_755_6;
    c_755_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1010z011xx1xx11x1xxzxzz0x0z01xxxxxzxxxzxzzxzxxzzzzzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
