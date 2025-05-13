class c_1325_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1325_6;
    c_1325_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0000z0100xzx1011xzz111z1x000zxxxxxzxxxxxzzxzzzzzxxzxxxxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
