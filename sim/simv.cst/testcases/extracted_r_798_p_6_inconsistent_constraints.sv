class c_798_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_798_6;
    c_798_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zzx101z1z01z1x000z00z0001x011zzxzxxxzzxzxzxxxzxzzzzxxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
