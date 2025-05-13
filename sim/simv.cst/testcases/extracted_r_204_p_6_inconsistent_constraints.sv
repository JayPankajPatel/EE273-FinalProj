class c_204_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_204_6;
    c_204_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z11x00z1z00000xzx0x0z10zz1111zzxzzzxxzxxxxzzzxzxzzzzxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
