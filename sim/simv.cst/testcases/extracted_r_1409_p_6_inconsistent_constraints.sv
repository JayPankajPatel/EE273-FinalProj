class c_1409_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1409_6;
    c_1409_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111x1zzzxz10z111x11000x10zz0x1xzzxxzxxzxxzxxzzzzxzzxxzxzxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
