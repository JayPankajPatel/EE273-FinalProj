class c_329_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_329_6;
    c_329_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1xx1z11x0xzxzx01zx0zx1z1zz0zxxzzxxzzzxzxxxzzzxxzzxzxxxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
