class c_341_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_341_6;
    c_341_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10000x11xxx10z10x0zzx10001zz0zxzxzzxzzxzxzzxzxzzxxzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
