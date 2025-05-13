class c_1401_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1401_6;
    c_1401_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0zxz000zzxxx01000110xzx1xxz010xxxxzxxxzxzxzxzxzzzxzzzxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
