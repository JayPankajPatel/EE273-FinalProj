class c_1277_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1277_6;
    c_1277_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1z0zzzx1zzxx10z0x11zx0zzx011xzzzzxxzxxzxzxzzxxxxxxxxzxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
