class c_1824_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1824_6;
    c_1824_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0x01zxz1z1zxx1101x0zxxz0x1x1xzxzzzzzxzzzxzzxxzxzxxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
