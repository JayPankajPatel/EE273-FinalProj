class c_1205_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1205_6;
    c_1205_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11z0zxxxzzzx1zx0zx01zz1xzz10xzzzzxzzxzxxzxxxzzzzxxxzxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
