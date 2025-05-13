class c_428_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_428_6;
    c_428_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1zxxxzxz1100zz10zxzzzzz00zzx1zzxxxzzzxxzzzxxzxzzxxzzxxzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
