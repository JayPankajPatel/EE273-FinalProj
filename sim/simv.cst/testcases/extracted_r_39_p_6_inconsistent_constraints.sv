class c_39_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_39_6;
    c_39_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxxzzz0xz0zx0z1zzxz1zz10zx1x10xxzzzxxzzzxxxxxxzxzzxzxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
