class c_659_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_659_6;
    c_659_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz100zxzxxz101xx0xzzzzx0111z11xzzxxxzxxxxzxxzxzzxzxzzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
