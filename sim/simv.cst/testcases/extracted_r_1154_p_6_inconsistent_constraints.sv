class c_1154_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1154_6;
    c_1154_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zzxz0xxx0110011xzx1xx1xx11x0xxxxzxxzxxxzzxzzzzzzzzxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
