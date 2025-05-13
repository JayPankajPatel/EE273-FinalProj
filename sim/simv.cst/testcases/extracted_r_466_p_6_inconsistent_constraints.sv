class c_466_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_466_6;
    c_466_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01zzzz1xz01x0000x01101x0z1xx1z1zzzxzzxzzxzzzxzzzzxxzxzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
