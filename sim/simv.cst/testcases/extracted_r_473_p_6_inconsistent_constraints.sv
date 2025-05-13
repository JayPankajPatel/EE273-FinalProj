class c_473_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_473_6;
    c_473_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1zx0xx0z11xx0001zz00110z00x11xzzxxxxxxxxxxxzzzxzxxzxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
