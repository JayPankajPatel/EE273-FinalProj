class c_1825_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1825_6;
    c_1825_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzxz1111x101011zz1zx0xxx100zx0zzxzzxzzzxzzxxzzzzzxxxxzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
