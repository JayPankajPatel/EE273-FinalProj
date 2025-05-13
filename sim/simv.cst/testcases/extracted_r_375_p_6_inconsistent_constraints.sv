class c_375_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_375_6;
    c_375_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0xxxxx11zzzxzxz11z01zz00x10xxxxxxxzzxzzxzzxxxzzzzzxxzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
