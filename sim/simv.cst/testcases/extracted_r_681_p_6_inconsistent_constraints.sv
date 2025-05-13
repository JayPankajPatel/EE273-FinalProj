class c_681_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_681_6;
    c_681_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11x0z0z0xz01z0x0zz0x0z00zz1zxzzxzxzxzzzzzxxxzxzzxxzzzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
