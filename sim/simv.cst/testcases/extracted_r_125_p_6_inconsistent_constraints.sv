class c_125_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_125_6;
    c_125_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101zx1111z1xzz01xx01xx0xzz00x0x1zxzxxxzxxzxxzzzxzxxzxxzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
