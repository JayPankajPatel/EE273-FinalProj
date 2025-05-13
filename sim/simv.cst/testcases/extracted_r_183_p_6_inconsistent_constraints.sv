class c_183_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_183_6;
    c_183_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz0zxx100xx1zz001x1zxxz1x0x0zxzxxzxxzxzxzxzxxxzzxzzzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
