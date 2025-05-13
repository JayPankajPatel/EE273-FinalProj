class c_1063_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1063_6;
    c_1063_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00xzz1zx1xzz1xx11zzx01z0z1z010xzzzzxzzxzzzzzxzxxxzzzzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
