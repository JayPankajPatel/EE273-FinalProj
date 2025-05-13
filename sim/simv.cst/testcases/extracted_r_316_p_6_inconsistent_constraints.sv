class c_316_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_316_6;
    c_316_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxx0z0xz01z1zzzxz1001z0zz101zxzzxzzzxzxxzxzzzxxzxzzzxxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
