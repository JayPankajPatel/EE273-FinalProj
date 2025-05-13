class c_824_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_824_6;
    c_824_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00100z1x0x011001z0zxxzz00x0x1z0xzzzzzxxxzzzxxzxxzxzzxzxxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
