class c_1531_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1531_6;
    c_1531_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx00z0zzz1xx0xxz00z0xz0z11zzx1xzxzzxxxzzzxxxzxxxzzxzzzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
