class c_1158_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1158_6;
    c_1158_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0z000z11zz11z1111000zzzz011zxxzxxxzxxxxxxxxxxxxxxzxzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
