class c_1087_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1087_6;
    c_1087_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx011z01zzxz0xxx01zz0xzxzz1xz011xzzzzxxxzxxzxzxzxxxzzxzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
