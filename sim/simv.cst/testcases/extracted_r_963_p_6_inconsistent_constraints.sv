class c_963_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_963_6;
    c_963_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zz1zx1z0xx10zzxx0z00xz1z00z1zzzzxxzxzxxxzxzzzxxzzzzzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
