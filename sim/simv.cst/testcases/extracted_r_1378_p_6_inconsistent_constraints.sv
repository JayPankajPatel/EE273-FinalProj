class c_1378_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1378_6;
    c_1378_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01zxz001110x1zxz0x0zxz0xx101x1xxzxzzzxzzzzxxzzxzxxzxzzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
