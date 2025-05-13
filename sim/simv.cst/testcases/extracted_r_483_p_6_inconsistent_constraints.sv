class c_483_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_483_6;
    c_483_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz0x100zz0xxx11z10z1xxxzx0zz10zxxxxzxzxxxzzxzxxzxxzxxxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
