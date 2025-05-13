class c_1717_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1717_6;
    c_1717_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110zz111z0x11zz11xxx1zx0111z0z0zzzxxxxzxxxxzzzxzzzzzzxzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
