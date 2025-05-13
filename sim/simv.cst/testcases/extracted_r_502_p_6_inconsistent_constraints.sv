class c_502_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_502_6;
    c_502_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx000011zxzx0xxz1zz1x00zx1xx0zzxzxzzxzzzxxxxzxxxzxzxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
