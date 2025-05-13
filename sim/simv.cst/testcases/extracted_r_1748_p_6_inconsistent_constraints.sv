class c_1748_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1748_6;
    c_1748_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxx0x11z0x100zzzz0x11xxx1zzx11xxxxzxzzxzzxxxzzzzzxzxxxzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
