class c_323_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_323_6;
    c_323_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxz0z11z1x000xxzzx1x0xxz1zxxzzxxzxxzxzzxxzxxzxxzzzzzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
