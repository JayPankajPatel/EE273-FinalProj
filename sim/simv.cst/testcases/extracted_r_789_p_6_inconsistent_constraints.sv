class c_789_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_789_6;
    c_789_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1110111010x01xx0111x00xxx1x0xzzzxxxzxxzxxzxxxxxxxxxxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
