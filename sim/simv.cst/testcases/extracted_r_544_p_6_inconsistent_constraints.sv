class c_544_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_544_6;
    c_544_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xx0x110xz0110z0xx011z0x11zz1xzxxzxxxzxxzzzxxzxzzzzzzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
