class c_691_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_691_6;
    c_691_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0110zxx1xxx0z0x01x1zx0z00110x0xxzxxxxzxzxzxzzzxxxxzxzxxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
