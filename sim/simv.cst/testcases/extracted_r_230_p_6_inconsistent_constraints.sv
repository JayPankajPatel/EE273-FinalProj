class c_230_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_230_6;
    c_230_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1010xz1xxz11z10z11xzzzzzx00zxzxxxzxxxzzxxzzzxxxzxxzxzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
