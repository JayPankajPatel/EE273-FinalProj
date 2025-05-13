class c_699_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_699_6;
    c_699_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00110xzzz0xx0z0zxxz1z01001011000zxzzzzzzzzxxxzxxxzxzxzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
