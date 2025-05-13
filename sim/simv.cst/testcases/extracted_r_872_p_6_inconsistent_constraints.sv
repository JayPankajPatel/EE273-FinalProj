class c_872_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_872_6;
    c_872_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11z01x0zzxxzxx111zxxx00zxx0xzxzxxxxzxxzzxzzzzxzxzzxxzxxxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
