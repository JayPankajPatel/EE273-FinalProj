class c_554_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_554_6;
    c_554_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z011xzz1zxx1xzzxxxz001zz101x01zzxxzzzxzzzxxzzxzzxzzzxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
