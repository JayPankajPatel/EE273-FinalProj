class c_1718_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1718_6;
    c_1718_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzxx11z10x0z11z11z11xzxxx00zz01zxzxxxxxxzzzxxxxxxzzxzxxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
