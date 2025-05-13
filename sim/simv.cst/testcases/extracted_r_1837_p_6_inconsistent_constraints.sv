class c_1837_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1837_6;
    c_1837_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0111010zz0zzz010zz11z1z0z1x0101xxzxxzzxxzxzzxxxzxxxzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
