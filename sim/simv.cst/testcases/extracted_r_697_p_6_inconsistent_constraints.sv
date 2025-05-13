class c_697_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_697_6;
    c_697_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011zzz0xxzzx11z0z1z0x0x1zx0011xxzzxxxxxzxzzzzxxxzzxzxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
