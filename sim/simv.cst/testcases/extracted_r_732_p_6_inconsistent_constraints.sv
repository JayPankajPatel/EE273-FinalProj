class c_732_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_732_6;
    c_732_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01100xx1x01zx1x1zzxz10zz100x0x0zzxxxzzxzxzxzxxzxzxxxxzxzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
