class c_73_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_73_6;
    c_73_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x0zzzx10zx0xxxzx1xxx0101xz011xzxxxzzxxxzxxzxzzzzzxxzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
