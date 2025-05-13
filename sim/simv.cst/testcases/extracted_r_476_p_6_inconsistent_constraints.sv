class c_476_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_476_6;
    c_476_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111x1xx0xxz1zzx1xz1x0100xzz0111xxzzxxxzzxxzxzzzxxxxxxzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
