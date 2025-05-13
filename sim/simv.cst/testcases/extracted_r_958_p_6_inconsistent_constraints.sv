class c_958_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_958_6;
    c_958_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1zx01zzx1x1zx100z0zx0z01zx0xzzxxxxxxzxzxxzzxzxzzxzxzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
