class c_960_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_960_6;
    c_960_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1xzzxx0x010x0z11xx1x1z1xxxx10zzxxzxzxxzzzxzzxzzxxzzxzxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
