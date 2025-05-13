class c_523_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_523_6;
    c_523_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1xzz01xx0x11z01x1z0z0z0x00xz1zzxzxxxzxzxxxxzxxxxzzzzxzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
