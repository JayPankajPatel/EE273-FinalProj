class c_1168_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1168_6;
    c_1168_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x1zzxz0xxzzxxzz1x10x00x0zzxxx0xxzxxxxxxzzzzxxxzzzxxzxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
