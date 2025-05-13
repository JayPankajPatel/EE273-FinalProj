class c_746_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_746_6;
    c_746_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x10101xxx10x0zzzzzz00z0zzzx0xzzzxzxzxxzxxzzzxxxzxzzxxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
