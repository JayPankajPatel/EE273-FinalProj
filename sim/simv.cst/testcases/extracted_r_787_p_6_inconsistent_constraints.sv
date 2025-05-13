class c_787_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_787_6;
    c_787_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011xzzzzzzxxx0z00xz1x00z00z001xzzzzzzzzxxzzzzxzxxzxzzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
