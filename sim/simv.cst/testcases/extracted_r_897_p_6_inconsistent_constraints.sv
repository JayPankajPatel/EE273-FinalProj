class c_897_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_897_6;
    c_897_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xx1xx1xxx011111zzz000x10x1xxzzzxzxzzxxxzzxzzxxzxzxzxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
