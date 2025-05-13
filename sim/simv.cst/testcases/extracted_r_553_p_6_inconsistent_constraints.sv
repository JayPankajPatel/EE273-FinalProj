class c_553_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_553_6;
    c_553_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx0101z0xxzxx111z0001xx10z0x11xzzzzzxzxxxzxzzzxzzxxzxxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
