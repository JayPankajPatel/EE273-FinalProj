class c_75_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_75_6;
    c_75_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z10z10z0xx0z10zz01x0z0z1x1z1xxzxxxzxxxxzxxxzzxxxxzzxzzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
