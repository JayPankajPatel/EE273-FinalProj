class c_674_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_674_6;
    c_674_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0zxx0xx1xzxx101xxxzx11xzx0x101xzxxxxzzzzzxzxzxxzzxzxxzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
