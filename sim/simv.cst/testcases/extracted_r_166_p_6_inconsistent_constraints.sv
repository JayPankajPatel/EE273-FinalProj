class c_166_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_166_6;
    c_166_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011zxx00z0z001zxx00xxxzzx101x1z1zzzzzxzzxxxxxxzzzxzzxzxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
