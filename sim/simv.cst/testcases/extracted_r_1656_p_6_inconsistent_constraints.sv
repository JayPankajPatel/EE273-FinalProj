class c_1656_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1656_6;
    c_1656_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x00xxx0x1z1zxx110xxzz0x1011x01zzzxxxxzzxzzxxzzzxxzxzzzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
