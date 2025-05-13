class c_669_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_669_6;
    c_669_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0z0xxxzz100xxz00x0z1xz0z1zzzzzzxzzzzzzxxxzzxxxzzzzxzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
