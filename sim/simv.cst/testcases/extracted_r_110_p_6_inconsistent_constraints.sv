class c_110_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_110_6;
    c_110_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1101zxz1x1zxz1010z0z0xx0zzzx1xxxzxzxzxzzxzxzxxzzzzxzzxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
