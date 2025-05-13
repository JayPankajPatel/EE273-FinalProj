class c_678_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_678_6;
    c_678_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x010x1x110x01x1zxz110x1111x1zxzzzxxzxzxzzxzzzzxxxzzzxzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
