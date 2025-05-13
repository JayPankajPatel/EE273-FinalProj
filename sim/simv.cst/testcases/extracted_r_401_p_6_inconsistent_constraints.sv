class c_401_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_401_6;
    c_401_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zx1z01z0000x01001z1x00x0zxx1xzxzxxxzzzxzzzxxxxxxzzzzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
