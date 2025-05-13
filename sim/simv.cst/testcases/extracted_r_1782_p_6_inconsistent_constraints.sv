class c_1782_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1782_6;
    c_1782_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zz101zx10xxzxx000zx0z0zzz00z0xxxzxxxzxzzzxxxxxzzzzxzxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
