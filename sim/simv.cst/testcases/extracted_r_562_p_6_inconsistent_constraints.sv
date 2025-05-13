class c_562_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_562_6;
    c_562_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1x0101x1100zzzx100zxz1x0xzzz1xxzxxzxxzzzzxxxxzzzxzzzxxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
