class c_1344_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1344_6;
    c_1344_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xzzzzz1101z0x1xz0x1z00z1100x10zxzxzzzzxxzxzxzxxzzzxxzxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
