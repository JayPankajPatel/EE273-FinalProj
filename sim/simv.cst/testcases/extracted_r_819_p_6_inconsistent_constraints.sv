class c_819_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_819_6;
    c_819_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzz11xz11x1xx0x1xx1x110000x11xzxzxzxzzxxzxzzzzxxxxzzzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
