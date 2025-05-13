class c_1198_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1198_6;
    c_1198_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00z10xz00xzx0z010010z0xx0110x1zzxzxzzxxxxzxzxzxzzzxxzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
