class c_1050_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1050_6;
    c_1050_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzzxzzzz0x0x1zzx01zx011x01xz1xxxzzzzzzzxxzxxzxxxxzzxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
