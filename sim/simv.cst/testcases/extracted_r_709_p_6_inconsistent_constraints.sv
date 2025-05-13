class c_709_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_709_6;
    c_709_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz0x0000z10x10x0zzzx01x0xx111xxxzxzxxxxzzxzzxxzxzxxxzxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
