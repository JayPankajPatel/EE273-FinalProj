class c_1720_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1720_6;
    c_1720_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0110z1011101101x1z110x1z1x0zxxxzzxxzxzzxzxxzzxxxxxxxxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
