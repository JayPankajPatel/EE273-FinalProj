class c_1134_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1134_6;
    c_1134_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xx11zxx10z1xzzx100z0xz0xx0z0xxxzzzxxzxxxxzxzzzzxxxzxxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
