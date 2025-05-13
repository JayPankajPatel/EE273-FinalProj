class c_1874_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1874_6;
    c_1874_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0101xz011zz1010011z11x00z01zzzxxzxzzzxxzzzxzxzxzzzxzxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
