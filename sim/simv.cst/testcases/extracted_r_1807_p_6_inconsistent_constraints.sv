class c_1807_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1807_6;
    c_1807_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xz10xz01011zx1xxz000z0x10xxxzzzzzxzxxxzxxxxzxzxxxxzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
