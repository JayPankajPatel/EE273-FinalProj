class c_250_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_250_6;
    c_250_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01100010101x0000x00000zzz0zz0xzxxzxxzzxzzxxxzxzzxzzzxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
