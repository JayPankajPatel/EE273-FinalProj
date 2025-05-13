class c_1648_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1648_6;
    c_1648_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1011zzzxxx0z01x10zx0100z0x1xxxzzzzzxxxzxzzxzzzxxzzxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
