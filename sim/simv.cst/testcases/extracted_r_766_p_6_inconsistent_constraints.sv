class c_766_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_766_6;
    c_766_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010x000x0xz00xx1xx011zxz11xxxzxxzzzzxxxzxxxzxzxxzxxxxxxxzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
