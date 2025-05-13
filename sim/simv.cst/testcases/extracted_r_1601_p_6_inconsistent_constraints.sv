class c_1601_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1601_6;
    c_1601_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx11z1zz1010x00x0x0z1z0xxx0x01zxxzxxzxzzxzxzzxxxxzzzxzzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
