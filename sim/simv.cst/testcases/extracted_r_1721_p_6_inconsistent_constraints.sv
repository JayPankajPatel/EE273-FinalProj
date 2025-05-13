class c_1721_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1721_6;
    c_1721_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0x101z1zz00xz1x00x11100z1z10zzxxxxxxxzxxzzzxxzxzzxxxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
