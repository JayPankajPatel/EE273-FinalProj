class c_930_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_930_6;
    c_930_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz11x0x0zz0xxzz111x1000xx110zx1xxzzzzzxzzzxzzzzzxzxzxxzzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
