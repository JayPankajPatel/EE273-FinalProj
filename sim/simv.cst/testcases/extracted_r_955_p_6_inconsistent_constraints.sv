class c_955_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_955_6;
    c_955_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xxxz1z1xz100zx0011z0x0x10z101xzxxzzxzxxxzxxxxxzxxxxxzzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
