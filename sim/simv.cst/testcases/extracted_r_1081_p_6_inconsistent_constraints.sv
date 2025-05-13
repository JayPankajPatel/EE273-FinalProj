class c_1081_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1081_6;
    c_1081_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx000xxxx10z0zx1z1zz001xz0z00xzzxzzzxzxxxxzxxzxzxxzxzxzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
