class c_1852_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1852_6;
    c_1852_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx101z1z0z110zx0zxx1001x0zzzx1xxxzxxzzxzzzxzxxzzzzxxzxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
