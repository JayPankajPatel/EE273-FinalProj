class c_227_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_227_6;
    c_227_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zz1zxzxxxxz110001z11z11x1zz0zzxxxzxzxzxzzxxxxzzxzxzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
