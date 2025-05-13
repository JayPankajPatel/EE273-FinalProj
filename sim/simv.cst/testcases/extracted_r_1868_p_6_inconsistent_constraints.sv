class c_1868_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1868_6;
    c_1868_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101001z0x1xzz0z0zz1z1zxx110zzzxzzxxzzzzxzxxzzzxzzzxzxzxzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
