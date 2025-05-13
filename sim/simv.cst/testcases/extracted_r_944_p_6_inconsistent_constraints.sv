class c_944_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_944_6;
    c_944_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101zx01xz00x01x10zx1zzxx11z0z0xxxzxzxxzzzxxzxzzzxxxzxzxxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
