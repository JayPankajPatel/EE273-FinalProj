class c_127_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_127_6;
    c_127_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxz1100zz0z110zxzxzz10110xz01xzxzzxzzxxxxxzxzzzxzxzxxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
