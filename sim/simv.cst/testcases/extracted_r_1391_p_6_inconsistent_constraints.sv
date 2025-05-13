class c_1391_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1391_6;
    c_1391_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z00z00x1zx0x001xxx11x0001zxxzxxzxxxzzxxxxzxxxzzzzzzxxxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
