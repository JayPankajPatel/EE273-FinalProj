class c_409_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_409_6;
    c_409_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0z0z1000xz10z00xxxxxx011x1z010zzxxxzzzxzzzxxxxxxzzzxxxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
