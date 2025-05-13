class c_378_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_378_6;
    c_378_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0x0x10z1101z0xx01zxxz01001x01xxxzzxxxzzzxxxzzzxzzxzzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
