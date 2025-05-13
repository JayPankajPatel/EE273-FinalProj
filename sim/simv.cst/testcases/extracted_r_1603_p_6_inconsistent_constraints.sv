class c_1603_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1603_6;
    c_1603_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1111z001zx1z10x11z10x110x0x010zxzzzzzzxzzxxzxzzxxzzxzxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
