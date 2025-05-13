class c_285_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_285_6;
    c_285_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1100000xzxz1z1zz0xxx111x1z0xxzzxxxxzzxzzxzxxxzzxxxzxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
