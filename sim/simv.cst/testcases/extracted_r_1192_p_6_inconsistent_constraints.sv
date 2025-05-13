class c_1192_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1192_6;
    c_1192_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x1110xxx0x1zx1zzx0z11z1z1x1z0xxzzzzxzzzzzzxxzxzxzzxzzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
