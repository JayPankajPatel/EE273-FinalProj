class c_357_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_357_6;
    c_357_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzz101110x0zzzxz110100z0101x11zxxxzzzxxxxxxzxzxxzzzxxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
