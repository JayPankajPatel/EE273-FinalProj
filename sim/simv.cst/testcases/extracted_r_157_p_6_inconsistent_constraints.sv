class c_157_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_157_6;
    c_157_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zxx00110110x1xzxxzx1z1xzz1111xzzxxzzxzzxxxzzxxxxxzxxzxxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
