class c_971_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_971_6;
    c_971_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx1x0zzzx0x11x01x11110z01x11zzzzxzzzzzzxxzzzxzzxzzxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
