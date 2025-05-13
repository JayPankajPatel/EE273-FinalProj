class c_579_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_579_6;
    c_579_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001zz10z1001zxzzzx1zx1z1z0xzzxxxxzxzxzxxzxxzzxxzxzzxzzzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
