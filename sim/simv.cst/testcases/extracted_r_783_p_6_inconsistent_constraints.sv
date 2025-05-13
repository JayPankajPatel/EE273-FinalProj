class c_783_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_783_6;
    c_783_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1xx0xx00xzx0zzxzz1xzx110z100zzxxzzxxzzzzzxzxxxzzxzxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
