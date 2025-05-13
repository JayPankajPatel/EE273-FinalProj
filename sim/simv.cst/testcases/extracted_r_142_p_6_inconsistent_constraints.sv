class c_142_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_142_6;
    c_142_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x0z00z10011x1x0x1z0zzzzz0x110xzzxzzzzxxzzzxzxzxxzzzzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
