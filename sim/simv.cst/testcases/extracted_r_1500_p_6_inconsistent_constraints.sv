class c_1500_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1500_6;
    c_1500_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0x0zz0z0x1x1z11z0xz0z1xzx001zxzxxxzxzzxzxzzxzzzzzzzxzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
