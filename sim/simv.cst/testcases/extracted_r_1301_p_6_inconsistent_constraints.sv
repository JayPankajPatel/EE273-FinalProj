class c_1301_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1301_6;
    c_1301_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z00110xzzz10101xz0zx1100x1x1xxzzzzzzzxzzzzxzzxzzzzzxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
