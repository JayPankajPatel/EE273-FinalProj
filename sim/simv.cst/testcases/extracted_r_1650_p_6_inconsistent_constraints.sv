class c_1650_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1650_6;
    c_1650_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzx11001zx10x1x1xz10001z0xxzx1xzzxxxzzzxzxzzzzxzzxzzxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
