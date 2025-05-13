class c_1223_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1223_6;
    c_1223_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx1x110x0xxzz0z01001z1x01zzz01zxxxxxxzxxxxzzzxzzzxxxxxzxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
