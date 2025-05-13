class c_381_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_381_6;
    c_381_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000xz11z0x0x111zzx00010z01xz1x0zxxzxzzxzxxxzxzzxxxxzxxzxxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
