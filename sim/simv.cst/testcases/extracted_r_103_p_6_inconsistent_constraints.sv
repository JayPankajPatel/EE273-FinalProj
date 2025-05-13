class c_103_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_103_6;
    c_103_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0010zxx0zzz11zx01zzx0z10x011zzzzxzxzzxxzxxxxzxxxxxzxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
