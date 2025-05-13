class c_605_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_605_6;
    c_605_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1zz1xz1xxx1zx0x1xxz0z11z01z10zxxzzxxzzxzzzzxxxzxzxxxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
