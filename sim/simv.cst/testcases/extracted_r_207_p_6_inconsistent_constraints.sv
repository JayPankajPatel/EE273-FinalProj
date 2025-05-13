class c_207_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_207_6;
    c_207_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxzxz0zxx0zxz1xz000zxzxz0zzz11zzzxxxzxxzxxzzxzzzzxzxxzxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
