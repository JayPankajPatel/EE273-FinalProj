class c_487_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_487_6;
    c_487_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0xz1z11x0z1z00zx0x0z1zzz1xzz1zxxzxxzzxzzxxxxzxzxzzxzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
