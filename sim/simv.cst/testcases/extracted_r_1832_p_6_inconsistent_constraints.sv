class c_1832_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1832_6;
    c_1832_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx01x1xzzz1111z0zxz1z0z0011xxzxxxzxxzzxxzxzzzzzxzxxxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
