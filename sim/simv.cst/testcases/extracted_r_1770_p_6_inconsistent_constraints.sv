class c_1770_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1770_6;
    c_1770_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1000z1xzz0z1x00z1xzzx0x1zxxzxzzzzxzzzzxzzzzxxzxxxxxzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
