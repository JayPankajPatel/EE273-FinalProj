class c_342_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_342_6;
    c_342_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xx0xx1z1z1zzzx01xz111z11x1010zxxxzxxzzxzxzxzzzzxxzxxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
