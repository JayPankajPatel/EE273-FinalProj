class c_593_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_593_6;
    c_593_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011x011zx01x0x00xz1zxz0xx00x0xxxxzzxzxxxzzzzxzzzxzxzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
