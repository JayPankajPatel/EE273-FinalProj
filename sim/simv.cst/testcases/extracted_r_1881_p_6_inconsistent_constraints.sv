class c_1881_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1881_6;
    c_1881_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx111z11xxz0zz1zz1xxz0x00zx01zxxxxzzxzzzxxzxzzzxzzzxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
