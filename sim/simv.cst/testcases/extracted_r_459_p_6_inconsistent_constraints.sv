class c_459_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_459_6;
    c_459_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz11zx00zz0xz1xxzx0xz1101xz1zzxxzxxzxxxxxxxxzxxxxzzzxxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
