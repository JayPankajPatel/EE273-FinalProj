class c_1165_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1165_6;
    c_1165_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx0z11z0100xzxz1x0x0z1x1z0z10xzzzzzzzzxxzxxzxzxxxxxxzzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
