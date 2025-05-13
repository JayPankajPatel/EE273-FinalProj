class c_41_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_41_6;
    c_41_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0xzx0z1x0x10z0111zxx00x0zzzx0xxxzzzxzxxxzxzxzzzzzxzxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
