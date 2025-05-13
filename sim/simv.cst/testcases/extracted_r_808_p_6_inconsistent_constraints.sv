class c_808_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_808_6;
    c_808_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0x110x0zzx01xxxz0zzxx001z110xzxxxxzzxxxzzxzxzxxxzzzxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
