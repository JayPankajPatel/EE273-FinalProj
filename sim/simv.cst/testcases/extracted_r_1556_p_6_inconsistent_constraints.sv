class c_1556_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1556_6;
    c_1556_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110x0x0zzx1xz00zx1z01xxx0z1z1z0xxxzzzxxxxxxxxxxxxzxzzxxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
