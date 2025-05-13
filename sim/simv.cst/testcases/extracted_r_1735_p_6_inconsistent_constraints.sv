class c_1735_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1735_6;
    c_1735_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx100zz00zz00010z1z01zz1z1xzz0zxxxzzxxxzxzxxxzxzzzxzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
