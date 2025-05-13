class c_782_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_782_6;
    c_782_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xxxz1101010zz0xxx1zx11z00xz1zzxxzxzxxzzzzzxzxzxzzxzxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
