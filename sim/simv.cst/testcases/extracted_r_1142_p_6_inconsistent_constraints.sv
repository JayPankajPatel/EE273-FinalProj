class c_1142_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1142_6;
    c_1142_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1zzxx00xxz1z1000x0011x0x1zx01zzzzxxzxxxxzzzxzzxzxzzxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
