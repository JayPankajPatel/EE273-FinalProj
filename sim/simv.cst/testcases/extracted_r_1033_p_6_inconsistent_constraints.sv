class c_1033_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1033_6;
    c_1033_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zzz11001zzxz0xzxzx0001zxz0x0zzzzxxxxzxzzxzxxxxxzzzxxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
