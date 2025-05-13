class c_564_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_564_6;
    c_564_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011zx01x010x1zx1x1x0zx1x1zz0011xxxzxzzzzxxzzzxxxzzzxxzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
