class c_1842_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1842_6;
    c_1842_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzx10000xx0110110xxxz1xx1111zxzzxxxxzzxzxxxzzxzxzxzxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
