class c_319_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_319_6;
    c_319_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxx01zzx10x011z01x0zxx11z111zzxzxzzxzxzxxzxxxxxzzxxxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
