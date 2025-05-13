class c_280_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_280_6;
    c_280_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz100xz0xzz0x00100xzxx0xz1z11zxzxzzxxxzzzxxzxxxxxzzxxxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
