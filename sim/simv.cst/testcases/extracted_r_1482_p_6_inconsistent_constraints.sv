class c_1482_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1482_6;
    c_1482_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001011xzxz1zz1x01zx11000x1x0x1xxxxzzzzxxzzzzzzxxzzzzzxzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
