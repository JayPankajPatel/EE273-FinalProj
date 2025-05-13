class c_261_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_261_6;
    c_261_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1x1zz01xxzx00z00zzx01xz110z1zxzzxzzxzxzxxzzxzxzzzxxxxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
