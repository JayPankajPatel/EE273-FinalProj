class c_906_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_906_6;
    c_906_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1xxz0zx0000x1100z1x00z1x1zx010zxzxzzxzzzzxzxxxxzxzxzxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
