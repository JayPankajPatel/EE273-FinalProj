class c_981_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_981_6;
    c_981_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzxzxz1x101x101xzxx0xxx1zx110xxzzxxxxzxxzzxxzzzzxxxxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
