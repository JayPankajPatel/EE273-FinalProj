class c_219_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_219_6;
    c_219_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxz1111x101x01010xz1xz1010000xxxxxxzzxzxzzzzxxzzzxzzxxzzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
