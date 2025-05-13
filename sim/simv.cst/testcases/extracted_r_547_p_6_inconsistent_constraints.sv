class c_547_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_547_6;
    c_547_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xx0zxz00x0xx011x011z0z0xx0101xzxxxzxxxxzxxzzxxxzzxzxzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
