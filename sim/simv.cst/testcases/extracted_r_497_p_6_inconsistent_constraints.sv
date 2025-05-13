class c_497_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_497_6;
    c_497_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zxz0010zx100xx010x1x00xz01101xxzxzxzxxzxzzzzxxxxzzxzxxzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
