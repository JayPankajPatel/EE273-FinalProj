class c_69_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_69_6;
    c_69_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01x01x011x1z1xx0xx000z10zx1xxzzxxxzzxxzzzxzzzxxxzxxzzzxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
