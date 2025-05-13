class c_1846_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1846_6;
    c_1846_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10111z11zz0x01110xxzzz1z0x11z1zxxzzxxxzzxxzxzzzxzzxzxzzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
