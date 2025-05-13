class c_1337_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1337_6;
    c_1337_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00zzz00xx0x0011xzxxx0zzxx1z010zzzzzzxzzzzxzxzxzxxxzzxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
