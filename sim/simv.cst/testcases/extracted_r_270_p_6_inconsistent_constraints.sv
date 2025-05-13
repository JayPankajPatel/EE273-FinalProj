class c_270_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_270_6;
    c_270_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0x110z01x0zz10x10zx0x0zx10z00xzxxxxzzzzxzzzzzzxxzzzzxzxzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
