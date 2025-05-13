class c_112_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_112_6;
    c_112_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10x1110100zzx1x0x1xzz0z010z1100zxxxzxxzxxzzxxzxzzxzxzxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
