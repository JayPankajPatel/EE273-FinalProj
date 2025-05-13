class c_513_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_513_6;
    c_513_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z1x10zzxz0zzxxzx1zxz110zxzxzzzxxxzxzzxxxzzxxxzzzzxzxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
