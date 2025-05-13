class c_600_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_600_6;
    c_600_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzx1zx1zxxz1z1zz001x1z1xx0011zxxxxzxzzxxxzzzzxxxzzxzzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
