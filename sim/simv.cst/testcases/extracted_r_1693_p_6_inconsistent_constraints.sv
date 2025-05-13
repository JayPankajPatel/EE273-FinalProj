class c_1693_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1693_6;
    c_1693_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzx1zzzx01x1z1zxx0zz1zz10x111xxxzzzzzzxxxzxxzzzzxzxzxzzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
