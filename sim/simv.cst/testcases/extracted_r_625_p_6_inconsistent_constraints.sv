class c_625_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_625_6;
    c_625_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zxxz0x1x0x0zxz1x11z01x1xx1001zxxxzzzzxzzxzzzxzzxzzxzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
