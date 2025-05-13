class c_844_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_844_6;
    c_844_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzzxzzx000z00z110zz1zzzx10zzx0xxzzzzzzzzxzzzzxxxxzxzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
