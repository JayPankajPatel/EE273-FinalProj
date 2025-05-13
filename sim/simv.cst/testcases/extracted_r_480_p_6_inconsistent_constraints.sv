class c_480_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_480_6;
    c_480_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101xxxz1011xx1xzxzxz11x1010xzzzxzzxzzzzxxxxxzxzxxxxzxzxxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
