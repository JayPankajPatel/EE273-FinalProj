class c_1609_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1609_6;
    c_1609_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zzz011x11x1x0xxz0z1zxz1z1xzzxzzzzzxzxxzzxxxxxxxzxzxxxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
