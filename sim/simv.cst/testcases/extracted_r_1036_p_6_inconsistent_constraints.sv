class c_1036_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1036_6;
    c_1036_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0zzx0xx0zz110z11xxxx01x10xx01xzxxzxzxxzxxzzxxxzzzxxxxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
