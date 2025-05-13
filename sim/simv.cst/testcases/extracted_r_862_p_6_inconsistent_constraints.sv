class c_862_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_862_6;
    c_862_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011z0zxz0110zz1z11z00x10z0x1000xxzzxzxzxxxxzxxxzxzzxzzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
