class c_1212_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1212_6;
    c_1212_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z11xxxxz0zxx1z1x0zx1z01zz1x0xzzzzzxxzxzzzxxxzzxzzzzxzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
