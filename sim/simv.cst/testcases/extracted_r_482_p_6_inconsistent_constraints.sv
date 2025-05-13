class c_482_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_482_6;
    c_482_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0z1zz0zzz1zzzzz0xx00xz10xz0xzzzzxxxxxzzxzxxzzxzxzxzzzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
