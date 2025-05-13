class c_1612_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1612_6;
    c_1612_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1zx000zz0zzz00xzxzx0x1xz00xz1zxzzzzxxxzzzxzxxxzzxxzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
