class c_891_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_891_6;
    c_891_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxxxz011zz11zz1x1111x0xzzxx1xz0zzxxxzzxxxzxzzxzxxzxxzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
