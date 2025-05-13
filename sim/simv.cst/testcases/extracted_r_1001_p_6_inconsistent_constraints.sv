class c_1001_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1001_6;
    c_1001_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0x010z01010z1x0z10z1z10x100zzzzzxzzxzzzzxxxxxxzzzzxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
