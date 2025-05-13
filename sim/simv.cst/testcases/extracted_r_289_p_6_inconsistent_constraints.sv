class c_289_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_289_6;
    c_289_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11xzxx0x1zxx1z100xz0xz001zzx1xzxzxxzxxzzzxzxxzxzzxzxxzzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
