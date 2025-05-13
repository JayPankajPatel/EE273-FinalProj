class c_654_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_654_6;
    c_654_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0x10z0xxx0z1x1000zx1xxz01x0xxxzzzzxxzzzzzzzzxzzzzxzxxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
