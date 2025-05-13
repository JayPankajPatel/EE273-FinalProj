class c_839_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_839_6;
    c_839_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0xz1xzz0x0x01x1xx0x011x11z0xzxzxxxxxxzzxzxxzzxzzzzxzxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
