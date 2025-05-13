class c_1279_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1279_6;
    c_1279_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111z11z1xz0x1z0x0x11xx00xzxxxzzzxxxxzzzzxzzxzxzzxxxxxzzzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
