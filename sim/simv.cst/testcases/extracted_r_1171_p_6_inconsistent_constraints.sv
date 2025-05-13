class c_1171_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1171_6;
    c_1171_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11xxzxxxx1x1xz1z1xz00z0zz1z00xxzxzzzzxzzxzzxzzxzxzzzxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
