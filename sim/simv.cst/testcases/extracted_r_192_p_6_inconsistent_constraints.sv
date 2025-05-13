class c_192_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_192_6;
    c_192_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1100zxzz001zzxx1x0x0x010z1zx0x1zzxxxxxxxxzxxxxxxxzxzxzxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
