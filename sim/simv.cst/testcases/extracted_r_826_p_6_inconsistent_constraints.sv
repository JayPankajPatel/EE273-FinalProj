class c_826_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_826_6;
    c_826_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x01z0z1x11xzxx00xz1z10zz1xx1zzzxxzzzzxzxzxzxzxxzzzxzzzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
