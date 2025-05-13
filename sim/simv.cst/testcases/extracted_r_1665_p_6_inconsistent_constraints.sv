class c_1665_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1665_6;
    c_1665_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00011xzx1z0xx0001xzx01xzx10x1z1zxxzxzxzzxzzxxxzzzzzzxzzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
