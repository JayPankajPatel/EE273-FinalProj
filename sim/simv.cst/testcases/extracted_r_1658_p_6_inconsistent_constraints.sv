class c_1658_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1658_6;
    c_1658_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz00100zz01zz10x1x1000z1x0z1xz1zzxzzxzxxzzxxxxzxzzzxzzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
