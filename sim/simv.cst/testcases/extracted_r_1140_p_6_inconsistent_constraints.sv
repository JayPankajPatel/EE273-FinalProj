class c_1140_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1140_6;
    c_1140_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111zxzz001000x10x1x101z0x001110xzxzzzxxxxxxxxxzxxzxzzzzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
