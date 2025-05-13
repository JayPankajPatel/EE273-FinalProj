class c_885_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_885_6;
    c_885_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0xxx1xzxz00xxxzz1xxz001xx1zx1xxxxxxxzxxzxxxxzzzxxzzxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
