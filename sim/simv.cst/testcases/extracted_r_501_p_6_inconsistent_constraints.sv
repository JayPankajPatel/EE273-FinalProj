class c_501_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_501_6;
    c_501_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxx0x0z11x1z01zx10zzzx1z1xx0xzxxxxxxxxzxxxzxzxxzxxxzzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
