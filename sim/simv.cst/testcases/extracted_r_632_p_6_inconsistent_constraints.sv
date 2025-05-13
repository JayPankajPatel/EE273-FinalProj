class c_632_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_632_6;
    c_632_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxzz1x10010xxz0z00z1zxzx00z0xxxzzxzzxzxzzxzxxxzzzxxzzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
