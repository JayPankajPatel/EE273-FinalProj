class c_856_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_856_6;
    c_856_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z101xxxzz0xx10z1xzz1z1z0z01xzxxxzxzzxzzzxzzzzxzxzzzzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
