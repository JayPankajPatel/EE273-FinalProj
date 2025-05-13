class c_710_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_710_6;
    c_710_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz10x10xx1x1xzzx111x1x1zx1z01zxzzxzzzzxxxxzxzzzxzzxzzxxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
