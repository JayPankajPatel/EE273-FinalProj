class c_599_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_599_6;
    c_599_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz00xzzz10z10z11x1zz1zxx11xz01zxzxzzzxzxxxxzxzxzxzzzxxxzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
