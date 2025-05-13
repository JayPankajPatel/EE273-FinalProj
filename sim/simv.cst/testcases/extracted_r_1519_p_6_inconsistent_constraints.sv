class c_1519_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1519_6;
    c_1519_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11zzz011zz0zz0zxz0z011111101z1xxzxxzzxxzzxxxzzxxxzxzxzzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
