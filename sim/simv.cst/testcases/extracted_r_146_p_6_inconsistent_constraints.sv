class c_146_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_146_6;
    c_146_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1101xx1z0x011z00x0x1z1zxz0x010xxzxzxxzxzxxxzxxzzxxxxxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
