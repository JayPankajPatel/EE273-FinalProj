class c_673_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_673_6;
    c_673_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zx1x1xzz0zxx000x1x10z110xzzxzxzzzxxzzzxzxzzxzzxzzzzzxxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
