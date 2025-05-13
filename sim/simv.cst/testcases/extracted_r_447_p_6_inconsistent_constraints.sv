class c_447_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_447_6;
    c_447_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx011xxzz0xx11101x0xx01001zz11zxzxzxxxxzxxzzzzzxzzxxxzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
