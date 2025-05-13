class c_1512_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:89)
    {
       (sda_result == 1'h1);
    }
endclass

program p_1512_6;
    c_1512_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx1zz1x001100x110zz00zz01x0z11xxxxzzxxxzxxzxxzzzzxxzzzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
