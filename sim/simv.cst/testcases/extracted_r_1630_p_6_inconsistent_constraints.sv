class c_1630_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1630_6;
    c_1630_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x0x00x1zxx0xz0zx10z01110x00x1zxxxxxzzxxxxxzxxzxxzxxxzzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
