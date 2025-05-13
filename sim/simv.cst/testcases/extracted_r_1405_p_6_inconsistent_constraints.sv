class c_1405_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1405_6;
    c_1405_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z11xx1zx0zzx10x10z0xz1zx1zzzzxzzzzzzzzzxxxzzzxzzzzzzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
