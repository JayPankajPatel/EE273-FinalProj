class c_1449_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1449_6;
    c_1449_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0001xxx1zz0zx00z0xzx00xx1zz1zzxxxzxzxzxzxxzxxxzxzxxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
