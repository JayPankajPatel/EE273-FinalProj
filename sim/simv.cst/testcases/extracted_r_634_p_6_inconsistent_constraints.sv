class c_634_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_634_6;
    c_634_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1z0zxx1zx1x0100z1zz10z0z01xxxzzxxxxzxzzzxzxzxzzxxxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
