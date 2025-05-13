class c_1332_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1332_6;
    c_1332_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11x00xxz0xz00x1zxx1000xz1z10xzxxzxxxxzzxzxzzzzzxxxxzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
