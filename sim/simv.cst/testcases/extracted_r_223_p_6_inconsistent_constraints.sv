class c_223_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_223_6;
    c_223_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1010x0zzx1x00zxz1zz1z10011z0001zzzzzxzzzzxzzzzxzxxxxzzxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
