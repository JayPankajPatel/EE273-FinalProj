class c_175_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_175_6;
    c_175_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00000zxxz01xx0z0100zz0x0x10xxzxxzzxxxxzxzxzzzzzxxzxzzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
