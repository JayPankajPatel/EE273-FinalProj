class c_1611_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1611_6;
    c_1611_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01100xxxzz1zz1x0z1zx0xxx000xzxxxxxzxzxxxxzzzxzxxxzzzzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
