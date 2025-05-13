class c_1028_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1028_6;
    c_1028_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zz0x10010xzx0zx111xzxzzxx11z1xzxxxzxxxxxzxzzzzzxzzzzxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
