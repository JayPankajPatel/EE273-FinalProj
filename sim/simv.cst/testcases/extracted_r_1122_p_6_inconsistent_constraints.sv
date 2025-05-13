class c_1122_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1122_6;
    c_1122_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1010xxxx0z1zxzx0zzxzz0zxz01zxxzxxzxxzzxxzzxxxzzzxzzxzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
