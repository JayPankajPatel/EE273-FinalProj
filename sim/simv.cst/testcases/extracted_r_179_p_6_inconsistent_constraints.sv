class c_179_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_179_6;
    c_179_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0xz100zz1z10zxx11zz0z01z0zzz0xzxxxxzzzxzzxxzxxzzzzxxxxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
