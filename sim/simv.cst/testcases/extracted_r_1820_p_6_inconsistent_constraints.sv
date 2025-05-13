class c_1820_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1820_6;
    c_1820_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010zz1x00xxx10xzx1zzz0zzxz00z1xxxxxxzzzxzzzzzxzzzxzxxxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
