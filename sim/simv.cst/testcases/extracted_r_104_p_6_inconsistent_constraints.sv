class c_104_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_104_6;
    c_104_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10x1zz10zxxz0zzx0z1z1zxx0x0zzzxxzzzxxzzxzxzxxxzzxzxzzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
