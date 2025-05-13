class c_895_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_895_6;
    c_895_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz111101x11z1xx1zx0zzx11z101xz0zxxzxxxzxzzxzzxzzxzxzzzzxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
