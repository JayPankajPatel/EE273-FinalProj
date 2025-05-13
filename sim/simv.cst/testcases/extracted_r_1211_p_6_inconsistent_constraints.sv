class c_1211_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1211_6;
    c_1211_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xx01x0x111z0x1000zz0zzz01xz0zxxxzxxxxzzxzzzxzxxxzxxzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
