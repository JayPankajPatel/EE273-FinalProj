class c_1503_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1503_6;
    c_1503_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01xzxxz1x1x0x0x110z1z01xz01zzzxxzzxxxzxxxzxzzzxzzzxzxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
