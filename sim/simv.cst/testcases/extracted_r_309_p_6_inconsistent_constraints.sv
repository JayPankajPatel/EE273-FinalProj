class c_309_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_309_6;
    c_309_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01x11z00110zx1zx0xz0xzzx1zxx0zzxxxzxzxzxzzzzxxxxzxxxxzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
