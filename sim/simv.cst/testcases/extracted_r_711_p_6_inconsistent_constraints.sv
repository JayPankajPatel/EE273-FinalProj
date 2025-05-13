class c_711_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_711_6;
    c_711_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01001z101zzx00z01x0z01zxz01xzzxxxxzzzxxxxzzxxxxxzzxxzxzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
