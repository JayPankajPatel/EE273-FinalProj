class c_415_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_415_6;
    c_415_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x100zx01zxz011xz11xx0x0z010z0zzxxxzxzzxxzxzzxxzxzzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
