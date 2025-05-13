class c_331_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_331_6;
    c_331_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zzxzx01zxz10z0zzx1xx00x0z0100xxxzxzzzzxxxzxzxxxxxzxzzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
