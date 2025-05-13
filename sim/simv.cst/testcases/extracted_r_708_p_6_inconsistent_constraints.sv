class c_708_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_708_6;
    c_708_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0100xxz0z0x1z0xx0xz111xx010xxxxxzzxzxxxxzzzxxxxzzxxxzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
