class c_1878_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1878_6;
    c_1878_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx010zz0111z1zzx01xz0z0z10010xxxzxzxxxxxzzzzzzxzxzzxzzxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
