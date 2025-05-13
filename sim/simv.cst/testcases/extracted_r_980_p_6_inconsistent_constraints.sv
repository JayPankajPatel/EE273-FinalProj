class c_980_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_980_6;
    c_980_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx011z1xzzxxz0z10zxx10110x01zx1zxzzxzxxxxzxzxxxzzxxxxxzxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
