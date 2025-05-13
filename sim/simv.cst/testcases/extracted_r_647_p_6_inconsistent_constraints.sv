class c_647_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_647_6;
    c_647_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10xxzzzxxz10z1z1z10z00x01001x0xxzzxxzxzxzxxxxxxzzxxzzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
