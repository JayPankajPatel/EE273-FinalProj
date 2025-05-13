class c_1346_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1346_6;
    c_1346_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100xzx0x1xxz1z01z1101zz01zxz1x0zxzzxxxzxxzxzzzxxzxxxxxzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
