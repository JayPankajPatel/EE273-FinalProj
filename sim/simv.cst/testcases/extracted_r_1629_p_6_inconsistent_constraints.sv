class c_1629_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1629_6;
    c_1629_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxz1xx01zx01x11x1zxz11xxzx0zz1zxzzxxxxzxzxzxzzxzxxzzzzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
