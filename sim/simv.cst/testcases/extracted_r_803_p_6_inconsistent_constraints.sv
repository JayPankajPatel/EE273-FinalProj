class c_803_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_803_6;
    c_803_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1xxxz00z1zz1x0z0zzxz0z11x0xxxzxxxzzzzzxxxxzxzxzzxzxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
