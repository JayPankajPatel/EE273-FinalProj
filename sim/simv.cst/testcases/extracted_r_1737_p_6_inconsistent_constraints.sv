class c_1737_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1737_6;
    c_1737_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxzxz1x0x00z1x0z1x0xxx111z010xxzzxxxxxxxxzxxzxzzxzxxzzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
