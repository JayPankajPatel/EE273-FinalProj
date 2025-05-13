class c_1573_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1573_6;
    c_1573_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1110z01z00xxzz1x110x0xxz1z1xxzxzxxxxxzxxxzxzzzxzzxxxzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
