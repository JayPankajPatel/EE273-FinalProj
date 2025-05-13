class c_300_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_300_6;
    c_300_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00x10x0zxzx01xxz0zxz0z101z11z1zzzzzxzzzxxxxzxzxxxxxxzxzzxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
