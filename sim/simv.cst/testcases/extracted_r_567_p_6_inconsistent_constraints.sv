class c_567_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_567_6;
    c_567_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001xxz1x1101z1zxx0x11zx0zx1zxxxxxzzzzzxzxxzzzzxxzzxxxzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
