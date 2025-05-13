class c_1273_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1273_6;
    c_1273_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z00zxx0zxxxxzz00110zzx00z1001zzzxzzxxzxxzxxzxzzzxxzzxxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
