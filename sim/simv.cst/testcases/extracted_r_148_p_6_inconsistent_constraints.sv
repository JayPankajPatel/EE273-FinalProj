class c_148_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_148_6;
    c_148_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz10z10xx1100z01zx0xxxxz100z10zxzxzzxzzzzxzzxzxxxxxxxzzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
