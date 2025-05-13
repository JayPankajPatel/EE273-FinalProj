class c_1232_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1232_6;
    c_1232_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzzzz110zz0zx01xzxzzx0zz11z0xzxzzzxzxxxxxxzzxzzxxzxxxxzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
