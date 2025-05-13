class c_1583_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1583_6;
    c_1583_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x0xz1111xxxzzxx0xz1111xz100x1xzzxxxzxzzxzxzxzxxxxxzxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
