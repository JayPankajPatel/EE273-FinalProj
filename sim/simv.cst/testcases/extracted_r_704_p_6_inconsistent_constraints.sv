class c_704_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_704_6;
    c_704_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzxzzzz01xxxz1zx01111xzx011zz1xxzxzzxxzxzzzxzzxzxzxzxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
