class c_155_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_155_6;
    c_155_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0001zxx00zx0001x01z0x001zx1zxxxxzxxzzxxxxxzzzxzxzzxxzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
