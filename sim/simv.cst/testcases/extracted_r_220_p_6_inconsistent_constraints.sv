class c_220_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_220_6;
    c_220_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz010z00x01zxxx1xx0z11x0xzzx00x1zzzxzxzxzxxxxzzzxxxzxzzzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
