class c_874_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_874_6;
    c_874_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011xx00z000101x000xzz0x1z1zx1xxxzzxxzxzxxxzxxxxzxxzzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
