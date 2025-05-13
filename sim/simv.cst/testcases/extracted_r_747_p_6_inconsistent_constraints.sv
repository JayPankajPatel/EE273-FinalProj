class c_747_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_747_6;
    c_747_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz0zx0z0x00zx0xxzzz00zx10zzxz0zxzzxzzzzxxxxzzzzzxxxxxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
