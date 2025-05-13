class c_1326_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1326_6;
    c_1326_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1110z011zx0zz1xz10x1z00x1zxz1xxzxxxzzzxxzxxzxzxzxxzzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
