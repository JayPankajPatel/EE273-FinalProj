class c_995_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_995_6;
    c_995_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01z11110z10x1xx0z0xx1zz0xz00z1zxxxzzzzxxxxzxxzzxxzxzxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
