class c_630_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_630_6;
    c_630_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11x01100xx1zzz011zx1xz0zx0z011xzzxzxxzzzxxzxxzxzxxzxxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
