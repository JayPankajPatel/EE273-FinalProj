class c_1649_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1649_6;
    c_1649_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zzxx01zzxzzzzz11zx1zxzx0011x1zxzzzzzxzxzzxxzzxzzzxxzxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
