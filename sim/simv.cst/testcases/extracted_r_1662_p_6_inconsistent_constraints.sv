class c_1662_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1662_6;
    c_1662_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx11x01x1x0xx1zx1z10zxzx00z11xzzxxzzxxxzxxxzzxzzzxxxxxzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
