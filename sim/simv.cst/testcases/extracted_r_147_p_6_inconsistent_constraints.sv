class c_147_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_147_6;
    c_147_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz1xxz0xz0x01z1z0zzx110011xx11xxxxzxxzxxzxzzxxxxxzxzxxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
