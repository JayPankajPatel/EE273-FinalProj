class c_395_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_395_6;
    c_395_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1010z11zzxz10xzxxx00xx1zx011xzxzxzxxxxxxzxzzzzzzzzxzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
