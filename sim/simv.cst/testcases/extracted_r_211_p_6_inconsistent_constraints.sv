class c_211_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_211_6;
    c_211_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz0x11xz100010xzz1xx0zxxzz0zx0xzxzxxxxxzxxxxzxzxzzxxxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
