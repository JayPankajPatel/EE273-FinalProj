class c_1439_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1439_6;
    c_1439_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz001zz0111z111x1zz01x1010zxz0zzzzxxzzxzzxxxxxzxxzxxxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
