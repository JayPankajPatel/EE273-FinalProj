class c_1698_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1698_6;
    c_1698_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x001000100zzz111x01101zx1z1x111xxxxxxzzzxxzzzzxzzxzzxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
