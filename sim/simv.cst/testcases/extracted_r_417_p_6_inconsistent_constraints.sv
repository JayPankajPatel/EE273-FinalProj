class c_417_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_417_6;
    c_417_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1z1zx0zzzzxx0zx01xz10zz11z0zxzzzzxxzxxzxxzzxxxzzxxxxxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
