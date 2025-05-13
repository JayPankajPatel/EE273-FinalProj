class c_1161_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1161_6;
    c_1161_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z10x0z0x0x1zzxz101x1z11z111z1zzzxxxxzzxxxxzzxxxxzzxxxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
