class c_1731_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1731_6;
    c_1731_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xz0zx1xz00zz11x11zz001xz0zxxxxzzzxzzxxxzxxzxxxxzzzzxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
