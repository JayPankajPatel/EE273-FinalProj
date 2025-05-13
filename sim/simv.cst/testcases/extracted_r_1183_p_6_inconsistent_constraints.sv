class c_1183_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1183_6;
    c_1183_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz00xzz10z11x01xx00z0zz1x01x11zzzzzzxzxzzzxxxxxxxxxxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
