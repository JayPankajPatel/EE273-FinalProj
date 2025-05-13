class c_1643_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1643_6;
    c_1643_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxx01101x10x1000z0x101z0z11z00xxxxxzzxxzzzxzxxxzxxzzxzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
