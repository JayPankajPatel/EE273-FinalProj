class c_785_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_785_6;
    c_785_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01z0xz1001xxx1000z10xxzx1z1xzzzzxxzzxzzxzzxzzxzzzzzxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
