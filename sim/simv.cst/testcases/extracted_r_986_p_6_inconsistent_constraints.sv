class c_986_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_986_6;
    c_986_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1zzzzzz001x0xx1xx11zxzxx011xzzzzzxxzxxxxzzxzzxxzxzxzxzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
