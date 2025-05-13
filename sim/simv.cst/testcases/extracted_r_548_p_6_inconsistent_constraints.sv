class c_548_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_548_6;
    c_548_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z01zz0xzxz1zx00xzx1101001x001zxzzzzzzzzxzzzzxxzxzxxxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
