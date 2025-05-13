class c_494_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_494_6;
    c_494_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0zzz0101xx1z0xzzz1zxxz0xz000zzzxzxxzxzzxzxxxzxxxzzzzxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
