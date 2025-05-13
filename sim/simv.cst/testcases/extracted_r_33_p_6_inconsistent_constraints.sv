class c_33_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_33_6;
    c_33_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz11x0x1xx1x1z1xz00x01x001xxx1zxzzxxzxzxzxzzzxzxzxxxxxzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
