class c_122_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_122_6;
    c_122_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxxz1xz110zz00111xxz01xz11xz00zxzzzzxzzzzzxzxzzxxzxxzzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
