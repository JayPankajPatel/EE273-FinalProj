class c_1696_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1696_6;
    c_1696_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzx1x1xxxzz01xzz00zxzz1z110xx0xzzzzzxxxzxzxxzxzzzzzxzzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
