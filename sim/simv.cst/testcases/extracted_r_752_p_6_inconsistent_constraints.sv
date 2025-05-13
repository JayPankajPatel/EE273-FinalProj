class c_752_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_752_6;
    c_752_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x01001z01x0000xzz10z0x01x1xzzxzzzzxzxzzzzzzxxzxxzzzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
