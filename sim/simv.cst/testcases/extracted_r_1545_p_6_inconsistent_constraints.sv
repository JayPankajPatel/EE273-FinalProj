class c_1545_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1545_6;
    c_1545_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x0zz1zz0z11x1x0111zz1x1zzxxzzxxzzxxxxzzxxxxxzzxzzxxxxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
