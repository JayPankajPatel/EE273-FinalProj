class c_187_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_187_6;
    c_187_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx00zzx0zz010110z10zz0xzz0100zzxzzzzxxxzxzxxzxxzzzxxxxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
