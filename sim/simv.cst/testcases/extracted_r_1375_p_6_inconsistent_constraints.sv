class c_1375_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1375_6;
    c_1375_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xxxzxx1xzx0xxz1z1z1xzz11z1z0zxxxzzxzzzzzxxxzxxxxzzzzzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
