class c_1467_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1467_6;
    c_1467_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxxxxz1zxzx11x010z1zxz10z0x1xzxzxxxxxxxzxxzzxxxxxzzzzzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
