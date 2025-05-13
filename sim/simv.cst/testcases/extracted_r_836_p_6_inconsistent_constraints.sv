class c_836_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_836_6;
    c_836_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zzx1zxz1z1z1z0xz0x1zzz1011x1xzzzzxzxzzzzxxzxzzxxxzxxzzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
