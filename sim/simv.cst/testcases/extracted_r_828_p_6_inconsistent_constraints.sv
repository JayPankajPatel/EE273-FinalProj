class c_828_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_828_6;
    c_828_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001z101x010x0100x1z1z11xxzzz0z1zxzxzzzxzzxzzxxxxzxxxxzzxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
