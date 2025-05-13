class c_485_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_485_6;
    c_485_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzx000x0x10zx0x1zzxzzz010xxxx1xxxxzzzzzzxxxxzzzzzxzxxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
