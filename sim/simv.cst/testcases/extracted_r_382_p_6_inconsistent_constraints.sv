class c_382_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_382_6;
    c_382_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110x1z0x1xz111zxzz110zz10xx1001zzzzzxxzzxxzxxzxxxxzzxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
