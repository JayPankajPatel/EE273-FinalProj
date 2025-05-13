class c_152_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_152_6;
    c_152_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001011zzzzx100z1x0xx1xzzx0xzzxxzzxxzxzxzxxxxzzxzxzxzzxxzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
