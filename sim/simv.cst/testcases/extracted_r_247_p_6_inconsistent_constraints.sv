class c_247_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_247_6;
    c_247_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zzx00z0xz1xz1z01z0000zz1zz000zzxzxxzzxzzzzzxxxxzxxxzxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
