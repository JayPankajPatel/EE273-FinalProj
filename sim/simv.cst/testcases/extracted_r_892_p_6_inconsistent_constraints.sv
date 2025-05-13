class c_892_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_892_6;
    c_892_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxx0x01xzzzxx111001zxxxxx1x01zxzzzxxzzzzzxzzzzzzzxzxxxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
