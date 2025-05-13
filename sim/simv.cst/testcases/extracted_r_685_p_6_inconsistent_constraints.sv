class c_685_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_685_6;
    c_685_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz001101zz00zx0z0zxzxz1zx0zxx0xxxxxxzxxxzxxzxxzxzzxxzzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
