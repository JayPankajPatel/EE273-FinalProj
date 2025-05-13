class c_1552_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1552_6;
    c_1552_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1101111x100x10z1z00xz0zxx1z1xxxxxzzzzzzxxxxzzzxzzxzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
