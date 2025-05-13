class c_411_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_411_6;
    c_411_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx10x000xx000xxz011zzxz1xxx0xz1xxxzzxxxzxxzxzzzzxzzxzzxxxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
