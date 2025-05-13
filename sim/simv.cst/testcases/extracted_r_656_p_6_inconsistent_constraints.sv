class c_656_6;
    bit[0:0] sda_result = 1'h0;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../seq/tr_paul_sequence.svh:63)
    {
       (sda_result == 1'h1);
    }
endclass

program p_656_6;
    c_656_6 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1xz11x0xx011z1xz1zz011z101x00zzxxxxxzxxzzzzzzzxxxxzxxxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
