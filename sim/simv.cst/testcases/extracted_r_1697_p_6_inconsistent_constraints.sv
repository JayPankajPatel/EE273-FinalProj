class c_1697_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1697_6;
    c_1697_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x10z1xzzz1zx1z101z1011zxxxx1zxzxxzzzzzzzxzzxzzxxxzzxxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
