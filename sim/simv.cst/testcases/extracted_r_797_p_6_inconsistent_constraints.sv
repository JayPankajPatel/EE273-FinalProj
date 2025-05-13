class c_797_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_797_6;
    c_797_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z11zx0x0x10zx0xz011z0100xx0x11zxzzzxxzzzzxxzxxzzxzxzxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
