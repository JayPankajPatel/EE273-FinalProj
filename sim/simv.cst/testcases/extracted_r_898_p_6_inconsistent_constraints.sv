class c_898_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_898_6;
    c_898_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1x1zx00xz0xzz01zxz00x11x11zx0zzzxzxxzxxzxxzzxzxzzxxzzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
