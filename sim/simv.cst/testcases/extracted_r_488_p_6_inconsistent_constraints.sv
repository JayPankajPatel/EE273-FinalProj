class c_488_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_488_6;
    c_488_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1zxz011x0x01x011zxxz1x1z11zx0zxxxzxxzzxxxzxzzzzzxzxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
