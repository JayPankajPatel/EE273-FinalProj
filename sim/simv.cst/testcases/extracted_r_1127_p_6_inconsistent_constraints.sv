class c_1127_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1127_6;
    c_1127_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01110101101xxx1z0100x10z1000z1xzzxxxzxxxzxzzxxzzzxzxzzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
