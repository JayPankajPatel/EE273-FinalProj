class c_1236_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1236_6;
    c_1236_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x01xxzz10xzzxz1xx0x00zz1z0x0xzxxxxzzzxxxzxxxzzxzzzzxzxxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
