class c_987_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_987_6;
    c_987_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z0zx1xzxzxz10xxx01xz000001001xzxxzxxxzxxzzxzxzzzzxxxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
