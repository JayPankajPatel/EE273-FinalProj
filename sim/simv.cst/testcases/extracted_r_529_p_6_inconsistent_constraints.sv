class c_529_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_529_6;
    c_529_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz111z1100z100zxz01z00zz1z1zx11zxzzzxzxxxzxzzzxzxxxzxzzzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
