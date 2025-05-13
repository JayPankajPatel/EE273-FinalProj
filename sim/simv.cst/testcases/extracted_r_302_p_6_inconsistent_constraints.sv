class c_302_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_302_6;
    c_302_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11z1xxx01xz100x1z01z11xz1xzz0x0zzzzzzzzzzxxxzxzxxxxxzzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
