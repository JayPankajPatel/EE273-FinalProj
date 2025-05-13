class c_1084_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1084_6;
    c_1084_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z111z0x0xxz01zx10x11z1x0z1xzxzxzxzzzzxzxzxzxzzxzzzzzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
