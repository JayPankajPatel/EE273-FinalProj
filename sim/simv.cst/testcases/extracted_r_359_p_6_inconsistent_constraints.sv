class c_359_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_359_6;
    c_359_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010zz1101x0xz1x1x1z0zz00111z1z0xzxzxxzxxzzxzzzzxxxzxzxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
