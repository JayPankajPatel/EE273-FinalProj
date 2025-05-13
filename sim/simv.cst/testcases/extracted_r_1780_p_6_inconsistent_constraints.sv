class c_1780_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1780_6;
    c_1780_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00x1z0z01xz11z10xxz1010xx00zzzzxxxxxzzzzxzxxxxxxzzzzxxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
