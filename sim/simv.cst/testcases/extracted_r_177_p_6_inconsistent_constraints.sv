class c_177_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_177_6;
    c_177_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10011zx10110x01xz0zx100z0zxz1x0zxxxxzxxxxzzxzxzzzzzzzxzzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
