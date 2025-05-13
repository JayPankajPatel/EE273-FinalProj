class c_1143_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1143_6;
    c_1143_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzxzzx0xxz00xx1z1z000x11000xz0xzxzzxzzzzxzxxxxzzzzzxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
