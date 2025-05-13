class c_410_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_410_6;
    c_410_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzxx1001zzx1z10x000zxzx0zzz01zxxzxzxxxzxzzzxzzxxxzxzxxzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
