class c_1285_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1285_6;
    c_1285_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1110x00zzxxx1xx0xxxzxxxz0x11z0z0xzzxzzxxzxzxzzxzxxxzzzxxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
