class c_450_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_450_6;
    c_450_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000xz1z0zz1xx1zz100zzzzz1xzx1z1xxzxxzxxzzzxzxxxzzxzxzxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
