class c_582_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_582_6;
    c_582_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zx101x1110z001z000z10zz1x1x1xzxxzzxzxzxxxzzzxxxxxzxzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
