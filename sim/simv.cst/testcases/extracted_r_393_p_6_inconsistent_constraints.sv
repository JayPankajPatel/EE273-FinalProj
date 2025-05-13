class c_393_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_393_6;
    c_393_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xzxxxz000zz000x0z00x11111zzxxxxxzxzzxxzzzzxzxzzzzzxxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
