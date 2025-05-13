class c_414_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_414_6;
    c_414_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xzx0x0z10x1z10zx1zxxz1zxx0z1xxzxxxzzxzxxzxxxxzzzzxxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
