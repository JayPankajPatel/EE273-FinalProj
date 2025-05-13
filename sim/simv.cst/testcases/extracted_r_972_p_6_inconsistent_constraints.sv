class c_972_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_972_6;
    c_972_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz0x1z000110000zx11zz1xz0z00zzxzzzzzzzzxzxxxzxxzzxxxzxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
