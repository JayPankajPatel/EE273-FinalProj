class c_1395_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1395_6;
    c_1395_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxzzzx00z10x10zx1z0z111z0011xzzzzxxxxzxxxzzzzzxzxxzxzxzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
