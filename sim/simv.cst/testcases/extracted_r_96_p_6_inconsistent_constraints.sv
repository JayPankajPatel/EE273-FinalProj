class c_96_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_96_6;
    c_96_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzxx01x0x0110xz10z0000zz1xzz10xzzzzzzxxxzxzzxxzzzzxxxxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
