class c_954_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_954_6;
    c_954_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0xzxx110z1xz0000z11z0x00xzz0zzxzzzzzxzzzzxzxzzxzxzzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
