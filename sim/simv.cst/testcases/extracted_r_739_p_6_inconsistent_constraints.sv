class c_739_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_739_6;
    c_739_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1x10z00zz1xx011z01zzzzz1x10xzzxxzzxxzzxzzzxxxxxzxxzzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
