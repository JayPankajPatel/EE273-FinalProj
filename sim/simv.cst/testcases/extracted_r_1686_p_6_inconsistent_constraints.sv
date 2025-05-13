class c_1686_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1686_6;
    c_1686_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zz00xx1x0x0100z01x1xz1x0z1x0xxzzzzzxxxzxzzzxxzxxxzzxxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
