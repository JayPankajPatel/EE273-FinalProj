class c_1389_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1389_6;
    c_1389_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz10101x1z00x0xx0z110x00zzx0zx1xxzxzxzzzzxzxxxxxzxxzxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
