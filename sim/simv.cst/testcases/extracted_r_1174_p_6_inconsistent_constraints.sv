class c_1174_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1174_6;
    c_1174_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z1zx0z1111z001x01zz111x0x11x1zzxxxzxxzxxxxzxxzxxzzzxxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
