class c_102_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_102_6;
    c_102_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011x11101zzx01x1z0100zx01z10z0xxzzzzxzzxxxxxzxxzxxzzxzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
