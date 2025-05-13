class c_896_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_896_6;
    c_896_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x0xx00111xx01x00x101z00x10x0xzzzxzxxxxxzxxzzxxzxxzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
