class c_1441_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1441_6;
    c_1441_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzz0x0z11z1x00xx0z0x10xzz0111xxxzxxzzxxzzxxxxzxxxzxxzzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
