class c_520_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_520_6;
    c_520_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzxzx0x0z1xxx0z001zxx0x00xx0xxxxxzzzxzzzzzzxzzxxxzxzxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
