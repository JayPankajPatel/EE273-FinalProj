class c_1614_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1614_6;
    c_1614_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxzz0xxzxzxxx0xz000111x0xz1z10xzxzxxxxzzxzzzxzzzxzxxxzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
