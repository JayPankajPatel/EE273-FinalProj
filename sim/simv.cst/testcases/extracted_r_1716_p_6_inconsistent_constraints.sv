class c_1716_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1716_6;
    c_1716_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx101x1z001x1zz01xxxxx0z001z00xxxzzxxzxzxxzxzxzxxzxzzxzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
