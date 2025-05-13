class c_1766_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1766_6;
    c_1766_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x000x10111xxzxzx11101zxxz0x0xxxxzxxzxxxxzxzzzzxzxzxxxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
