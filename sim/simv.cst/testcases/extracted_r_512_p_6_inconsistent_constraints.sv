class c_512_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_512_6;
    c_512_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110z000110zx0xzx0xz0x0z00x0x0x1xzzxzxzzzxxxxxxxzzzzzxzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
