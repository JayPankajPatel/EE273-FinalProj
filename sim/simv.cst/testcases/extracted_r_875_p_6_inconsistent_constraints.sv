class c_875_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_875_6;
    c_875_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x00z1z0101z11xzx10x10x000z1x1xzzzzzzxzzzxxxxzzzzzzzxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
