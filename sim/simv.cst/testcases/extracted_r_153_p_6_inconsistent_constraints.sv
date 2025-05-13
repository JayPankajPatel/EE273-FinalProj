class c_153_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_153_6;
    c_153_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x111xxzzxz1x110x0zx0xx0xzx1xxxxxxzzzzzxzzxxzxzzxxzxxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
