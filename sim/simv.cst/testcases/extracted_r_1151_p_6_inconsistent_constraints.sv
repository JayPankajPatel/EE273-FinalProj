class c_1151_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1151_6;
    c_1151_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx1zz000x10zzxx11z1zx1z00zxzx01zxzzzzxxxzzxxzxzxzxxxzxzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
