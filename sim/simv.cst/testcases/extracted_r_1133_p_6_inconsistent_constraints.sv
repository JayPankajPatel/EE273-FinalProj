class c_1133_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1133_6;
    c_1133_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz010z1zz00x1z111x01x11x0x00xz0zxzzzxzxxzxxxxzzzzzzxxzzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
