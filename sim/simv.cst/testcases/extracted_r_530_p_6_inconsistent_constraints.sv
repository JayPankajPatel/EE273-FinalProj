class c_530_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_530_6;
    c_530_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1x11xz1xz11x11z0x0z1z1101x0xzxzxzzzzzzzxzzzzzzzzzxzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
