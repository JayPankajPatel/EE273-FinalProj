class c_308_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_308_6;
    c_308_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxzx0010zx01xx1z01111z0zx1xxx0xzxxxxzxzzxxxxzxzzzxzxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
