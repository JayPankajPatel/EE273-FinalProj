class c_248_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_248_6;
    c_248_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1z11010z11x1x101xzzzz0zxx1zz0zxxzxxxxxzzzzzxxzzzxxzzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
