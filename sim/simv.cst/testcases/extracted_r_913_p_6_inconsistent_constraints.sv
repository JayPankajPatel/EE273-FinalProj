class c_913_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_913_6;
    c_913_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx1zzz101zx0z111xzxz1z00z0xzz01xzzzzxxxzxxxzzzzzzxxzzxzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
