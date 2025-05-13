class c_977_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_977_6;
    c_977_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z00x100zx001x00111z1xzz0z11x11zxxxzzzzxzxzzzxzxzzxxzzxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
