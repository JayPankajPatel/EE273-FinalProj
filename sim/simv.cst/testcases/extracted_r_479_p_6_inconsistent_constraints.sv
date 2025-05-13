class c_479_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_479_6;
    c_479_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz1x00x01xzx011x1zzz010x1z00zzxxxxzxxxxzzzzzxxxxxxzzzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
