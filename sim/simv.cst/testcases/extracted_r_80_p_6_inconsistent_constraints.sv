class c_80_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_80_6;
    c_80_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z00xxxzz1z100z1x1zxx0x1x1x1z1xxzxxzzxzzxxxzzxzzzzzzzzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
