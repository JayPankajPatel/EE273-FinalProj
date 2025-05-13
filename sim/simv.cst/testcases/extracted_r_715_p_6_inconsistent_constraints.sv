class c_715_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_715_6;
    c_715_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1zxx0xzxx1z1zxxz10z1xzzx00z1zzzzzzxxxzxzzxxxxxxzxzzzxzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
