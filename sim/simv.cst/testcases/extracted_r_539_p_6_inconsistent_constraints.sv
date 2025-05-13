class c_539_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_539_6;
    c_539_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x0z011xxx1zxz1xzzx0111zx10111zxzzxzxxzzzzxzzxzzzzzxzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
