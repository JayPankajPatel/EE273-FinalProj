class c_1415_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1415_6;
    c_1415_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0x0zzzxx0z1xxx1111z1z0zx01zx1xxzxzzxxxzzzzxxzzxzxxzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
