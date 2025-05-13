class c_408_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_408_6;
    c_408_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz0xx01010xz1zxz0z010x01x000xzzxzzxzzxxzxzzzxxxzzzzxzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
