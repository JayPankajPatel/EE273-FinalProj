class c_1817_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1817_6;
    c_1817_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzzxz1x1x011x01zzz1010100z0x10xzzxxzxzxxzzzxxxzxxxxzxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
