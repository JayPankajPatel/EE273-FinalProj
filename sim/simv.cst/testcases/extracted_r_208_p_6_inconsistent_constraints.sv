class c_208_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_208_6;
    c_208_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xx10x1xxz01x1xz0x1zzz000010x01xzzxzxzzxxxzzzxxxxzzxzzxzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
