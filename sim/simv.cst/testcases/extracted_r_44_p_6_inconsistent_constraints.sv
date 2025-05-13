class c_44_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_44_6;
    c_44_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x010z0xxz11xz1x10101x00000xxxxxxxxxxzzzxzzzzzzxzxzzzzzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
