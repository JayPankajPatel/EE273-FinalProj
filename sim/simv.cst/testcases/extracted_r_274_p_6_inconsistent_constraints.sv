class c_274_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_274_6;
    c_274_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1101x1101z0zx01100z10z1z0xz001xxxxxzxxzzxxxxxxxxxxzxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
