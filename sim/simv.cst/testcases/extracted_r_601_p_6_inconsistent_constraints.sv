class c_601_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_601_6;
    c_601_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zz10x10xz1z0zx0x100zzzxz10010zxzxxzxxzzzzxxxxxxzxzxzxxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
