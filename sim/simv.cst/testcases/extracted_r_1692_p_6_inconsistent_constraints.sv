class c_1692_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1692_6;
    c_1692_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111zz0x1zz0z10xxz011x00000xxxzzzzzxxxxxxzxxzxzxzzxzxxzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
