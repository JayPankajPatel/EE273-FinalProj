class c_629_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_629_6;
    c_629_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x010z01100x111z0z1xz0x00zz001zzzzzzxxzxxxxxzzxzxzzxzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
