class c_100_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_100_6;
    c_100_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10010x100z0100zx1zx0z101zxxz0x0zxzzzxxxzzzzzxxzxzzxzzzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
