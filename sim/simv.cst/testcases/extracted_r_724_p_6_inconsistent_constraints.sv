class c_724_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_724_6;
    c_724_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xz0010x10x11x00z11xxzzxz11000zzxxzzxzxxzzxxxxzzxzxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
