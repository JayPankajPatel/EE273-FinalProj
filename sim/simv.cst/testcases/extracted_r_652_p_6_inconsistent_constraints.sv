class c_652_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_652_6;
    c_652_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx10x1111101x0z0x11xzx010xxzx0zxzxxxzxzzzzzzxzxxxxzzxxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
