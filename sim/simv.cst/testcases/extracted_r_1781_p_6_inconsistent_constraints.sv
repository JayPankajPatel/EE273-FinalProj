class c_1781_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1781_6;
    c_1781_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz011010zz00z00xz1xx11x1z100zz0xzzxxxzxxzzzzzxzzzzxzzzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
