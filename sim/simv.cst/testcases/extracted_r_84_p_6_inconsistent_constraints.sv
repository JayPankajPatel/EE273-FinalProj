class c_84_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_84_6;
    c_84_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0101101z10xz110zx1zz01z1x0x000xzzxxzzxzxzxzzzxzzzxxxzxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
