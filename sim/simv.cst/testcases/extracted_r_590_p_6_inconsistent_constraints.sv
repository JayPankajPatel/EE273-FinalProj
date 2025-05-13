class c_590_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_590_6;
    c_590_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x111z00z110z1011zx1101001zxzx0zzxzxxxxzxzxzzzxzzxzzzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
