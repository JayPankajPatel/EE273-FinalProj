class c_940_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_940_6;
    c_940_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0z10zxzx1xz01z0z1zx00101x010xxzzxzxxxxxzzzxzzzzxxxzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
