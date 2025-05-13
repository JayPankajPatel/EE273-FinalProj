class c_911_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_911_6;
    c_911_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0x0x1x1zz1z011xz0xz0zxzzxxxxxzzzzxxzxxxzzzzxzxzzzxzxzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
