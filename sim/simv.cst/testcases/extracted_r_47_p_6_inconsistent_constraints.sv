class c_47_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_47_6;
    c_47_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01001zxzx1x10zz0z1z11z0z0x1zxzzxxzxxxzxzxzxzxxxxzxzxxxzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
