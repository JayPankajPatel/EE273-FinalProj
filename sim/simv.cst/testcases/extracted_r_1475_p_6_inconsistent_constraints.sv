class c_1475_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1475_6;
    c_1475_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz000000110zzx10x1001xz1x111zx1xzxzxzzzxxxzzzxxzxxxzzxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
