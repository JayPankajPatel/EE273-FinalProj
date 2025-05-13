class c_124_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_124_6;
    c_124_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz01x0101x1000x00zz1xx01x101zzxxzxzxzzxzzzzxzxxxxzzxzzxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
