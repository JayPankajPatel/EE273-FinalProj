class c_60_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_60_6;
    c_60_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x01x1xz11xxz0xxx111x1x0z1z011zzxzxzxxxxzzzzzzzzxxxxxzxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
