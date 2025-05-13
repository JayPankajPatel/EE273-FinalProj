class c_1055_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1055_6;
    c_1055_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011xx01xzx00x111zx0z0x1zz100x1xzxxxxzxxzxxzzzxxxzzzxzzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
