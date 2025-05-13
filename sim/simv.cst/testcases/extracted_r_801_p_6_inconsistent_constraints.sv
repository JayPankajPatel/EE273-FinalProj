class c_801_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_801_6;
    c_801_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zz010x0x0z11zx100xzzz11z1xx0xzzxxzxzzzxxzzxxzzxxxzzxzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
