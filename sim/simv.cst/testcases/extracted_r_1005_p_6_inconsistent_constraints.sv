class c_1005_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1005_6;
    c_1005_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00x1xzx1zz1011xzz011xx000xz110xxxzxxzxzxzxxxzxxzzzxzzxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
