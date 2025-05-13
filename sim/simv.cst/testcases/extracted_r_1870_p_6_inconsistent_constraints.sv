class c_1870_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1870_6;
    c_1870_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10x1xxxz10xzzzz11zz00zzxzzxx1xxxxzzxzzxxzxxzzxzxxxzxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
