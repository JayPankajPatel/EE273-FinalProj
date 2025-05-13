class c_1727_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1727_6;
    c_1727_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzz10xx1101z000xz1111zxx1010zxzzxxzxxzzxzxzzxxxxxzzzzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
