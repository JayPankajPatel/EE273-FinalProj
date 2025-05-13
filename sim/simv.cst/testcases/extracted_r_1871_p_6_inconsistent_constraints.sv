class c_1871_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1871_6;
    c_1871_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01z11xx0zz1zzz1x0110zz1z001zzzzxzzzxzzxxxxzxzxzxxxxzzxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
