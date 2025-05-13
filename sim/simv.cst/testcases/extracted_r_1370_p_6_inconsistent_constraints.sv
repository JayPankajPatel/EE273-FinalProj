class c_1370_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1370_6;
    c_1370_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xz1zzz1x01x0x101z010x10zz0z0xxzxzzzzzzzxxzxxxzxzxxxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
